FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .

COPY kittygram_backend/entrypoint.prod.sh /entrypoint.prod.sh
RUN chmod +x /entrypoint.prod.sh
ENTRYPOINT ["/entrypoint.prod.sh"]

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]
