FROM python:3.12.7-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt 

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi:application"]
