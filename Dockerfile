FROM python:3.11-slim-buster

# 🔧 Install system dependencies required by LightGBM
RUN apt-get update && \
    apt-get install -y libgomp1 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "flask_api/app.py"]

