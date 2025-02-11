from fastapi import FastAPI
import pickle
import numpy as np
from pydantic import BaseModel
from tensorflow.keras.models import load_model
from datetime import datetime, timedelta

# Load PCOS Model & Scaler
with open("models/pcos_model.pkl", "rb") as f:
    pcos_model = pickle.load(f)

with open("models/scaler_pcos.pkl", "rb") as f:
    scaler_pcos = pickle.load(f)

# Load LSTM Model & Scaler
lstm_model = load_model("models/lstm_period_model.h5")

with open("models/scaler_period.pkl", "rb") as f:
    scaler_period = pickle.load(f)

# FastAPI Instance
app = FastAPI()

# PCOS Prediction Input Model
class PCOSInput(BaseModel):
    features: list

# Menstrual Cycle Prediction Input Model
class PeriodInput(BaseModel):
    last_period_date: str

@app.post("/predict_pcos/")
def predict_pcos(data: PCOSInput):
    input_features = np.array(data.features).reshape(1, -1)
    input_scaled = scaler_pcos.transform(input_features)
    prediction = pcos_model.predict(input_scaled)
    result = "PCOS Positive" if prediction[0] == 1 else "PCOS Negative"
    return {"prediction": result}

@app.post("/predict_period/")
def predict_period(data: PeriodInput):
    last_period_date = datetime.strptime(data.last_period_date, "%Y-%m-%d")

    # Dummy input for LSTM (Modify based on your dataset)
    input_data = np.zeros((1, 10, 2))  
    prediction = lstm_model.predict(input_data)

    predicted_cycle_length = max(28, min(35, prediction[0][0]))  
    next_period_date = last_period_date + timedelta(days=int(predicted_cycle_length))
    
    return {"next_period_date": next_period_date.strftime('%Y-%m-%d')}

# Run API Locally
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
