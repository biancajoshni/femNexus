import pickle
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from xgboost import XGBClassifier

# Load dataset
df = pd.read_csv("PCOS.csv")

# Drop unnecessary columns
df = df.drop(columns=['Exercise_Type', 'Exercise_Benefit'])

# Define features and target
X = df.drop(columns=['PCOS'])
y = df['PCOS'].map({0: 0, 1: 1, 2: 1})  # Ensure binary labels

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Feature Scaling
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

# Train XGBoost
pcos_model = XGBClassifier(n_estimators=50, learning_rate=0.05, max_depth=3, reg_lambda=1, reg_alpha=0.5, random_state=42)
pcos_model.fit(X_train_scaled, y_train)

# Save the trained model
with open("models/pcos_model.pkl", "wb") as f:
    pickle.dump(pcos_model, f)

# Save the scaler
with open("models/scaler_pcos.pkl", "wb") as f:
    pickle.dump(scaler, f)

print("PCOS Model & Scaler saved successfully!")
