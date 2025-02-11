import pickle
import pandas as pd
from sklearn.preprocessing import StandardScaler

# Load dataset
df = pd.read_csv("PCOS.csv")

# Drop unnecessary columns
df = df.drop(columns=['Exercise_Type', 'Exercise_Benefit'])

# Define features (excluding the target column "PCOS")
X = df.drop(columns=['PCOS'])

# Initialize and fit the scaler
scaler_pcos = StandardScaler()
scaler_pcos.fit(X)

# Save the scaler
with open("models/scaler_pcos.pkl", "wb") as f:
    pickle.dump(scaler_pcos, f)

print("✅ scaler_pcos.pkl saved successfully!")
