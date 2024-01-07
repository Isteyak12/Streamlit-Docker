# Use Python 3.8 image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy only the necessary files
COPY requirements.txt /app
COPY app.py /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "app.py"]
