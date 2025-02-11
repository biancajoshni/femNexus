import pickle
import numpy as np
from tensorflow.keras.models import load_model
from sklearn.preprocessing import MinMaxScaler

# Load trained LSTM model
model = load_model("lstm_period_tracker.h5")
scaler = MinMaxScaler()

# Save the scaler
with open("models/scaler_period.pkl", "wb") as f:
    pickle.dump(scaler, f)

print("LSTM Model & Scaler saved successfully!")
