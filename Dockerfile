FROM python:3.11-slim

# Set the working directory to /ecom
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the full project
COPY . .

# Go into the app folder inside ecom
WORKDIR /app/ECOM/app
# Expose FastAPI port
EXPOSE 8000

# Run the app
CMD ["uvicorn", "ECOM.app.main:app", "--host", "0.0.0.0", "--port", "8000"]




