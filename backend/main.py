import os
import pickle
import numpy as np
import pandas as pd
from tensorflow.keras.models import load_model
from sklearn.preprocessing import StandardScaler
from fastapi import FastAPI

# Disable GPU to avoid CUDA errors
os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

app = FastAPI()

# Correct file paths
LSTM_MODEL_PATH = r"D:\femNexus-1\backend\models\lstm_period_model.h5"
PCOS_MODEL_PATH = r"D:\femNexus-1\backend\models\pcos_model.pkl"
SCALER_PCOS_PATH = r"D:\femNexus-1\backend\models\scaler_pcos.pkl"

# Load LSTM Model for menstrual cycle prediction
try:
    if os.path.exists(LSTM_MODEL_PATH):
        lstm_model = load_model(LSTM_MODEL_PATH)
        print(" LSTM Model Loaded Successfully!")
    else:
        print(f" ERROR: LSTM model file not found at {LSTM_MODEL_PATH}")
except Exception as e:
    print(f" ERROR loading LSTM model: {str(e)}")

# Load PCOS Prediction Model
try:
    if os.path.exists(PCOS_MODEL_PATH):
        with open(PCOS_MODEL_PATH, "rb") as f:
            pcos_model = pickle.load(f)
        print(" PCOS Model Loaded Successfully!")
    else:
        print(f" ERROR: PCOS model file not found at {PCOS_MODEL_PATH}")
except Exception as e:
    print(f" ERROR loading PCOS model: {str(e)}")

# Load PCOS Scaler
try:
    if os.path.exists(SCALER_PCOS_PATH):
        with open(SCALER_PCOS_PATH, "rb") as f:
            scaler_pcos = pickle.load(f)
        print(" PCOS Scaler Loaded Successfully!")
    else:
        print(f" ERROR: PCOS scaler file not found at {SCALER_PCOS_PATH}")
except Exception as e:
    print(f" ERROR loading PCOS scaler: {str(e)}")


# Example API Endpoints
@app.get("/")
def home():
    return {"message": "FemHealth Backend is Running!"}

@app.get("/predict_period/")
def predict_period():
    return {"message": "Period prediction will be implemented here!"}

@app.get("/predict_pcos/")
def predict_pcos():
    return {"message": "PCOS prediction will be implemented here!"}

# Run FastAPI with:
# uvicorn main:app --reload
