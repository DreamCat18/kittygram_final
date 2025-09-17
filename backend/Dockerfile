FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y postgresql-server-dev-all build-essential zlib1g-dev && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi:application"]
