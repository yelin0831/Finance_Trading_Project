import yfinance as yf
import pandas as pd
import os

# Example: Download 1-year daily data for Apple stock
ticker = 'AAPL'
data = yf.download(ticker, period='1y', interval='1d')

# Save the data as a CSV file in the "data" folder
os.makedirs('data', exist_ok=True)  # Create the "data" folder if it doesn't exist
csv_path = os.path.join('data', f'{ticker}_data.csv')
data.to_csv(csv_path)
print(f"Data saved to {csv_path}")