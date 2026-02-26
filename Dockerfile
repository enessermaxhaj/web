# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy backend + requirements
COPY backend/ ./backend
COPY backend/requirements.txt ./

# Install backend dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy frontend
COPY frontend/ ./frontend

# Expose port
EXPOSE 5000

# Start backend
CMD ["python", "backend/app.py"]