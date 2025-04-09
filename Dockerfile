FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt first (before installing)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the app
COPY src/ .

EXPOSE 5000

CMD ["python", "app.py"]

