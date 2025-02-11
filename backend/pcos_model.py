import pickle
import numpy as np
from sklearn.preprocessing import StandardScaler
from xgboost import XGBClassifier

# Train and fit your model before saving
model = XGBClassifier(n_estimators=50, learning_rate=0.05, max_depth=3)
scaler = StandardScaler()

# Save the trained model and scaler
with open("models/pcos_model.pkl", "wb") as f:
    pickle.dump(model, f)

with open("models/scaler_pcos.pkl", "wb") as f:
    pickle.dump(scaler, f)

print("PCOS Model & Scaler saved successfully!")
