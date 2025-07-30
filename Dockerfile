# Base image with Python and system tools
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system-level dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libsndfile1 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Set Streamlit config directory to a writable location
ENV STREAMLIT_CONFIG_DIR=/app/.streamlit

# Copy all files
COPY . .

# Create .streamlit config to suppress usage stats warning
RUN mkdir -p /app/.streamlit && \
    echo "[browser]\ngatherUsageStats = false" > /app/.streamlit/config.toml

# Upgrade pip and install required Python libraries
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose Streamlit's default port
EXPOSE 7860

# Start the app
CMD ["streamlit", "run", "universal_translator.py", "--server.port=7860", "--server.address=0.0.0.0"]
