FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && apt-get install -y postgresql-server-dev-all build-essential zlib1g-dev && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi:application"]


# [Unit]
# Description=gunicorn daemon

# After=network.target

# [Service]
# User=yc-user

# WorkingDirectory=/home/yc-user/kittigram/backend/

# ExecStart=/home/yc-user/kittygram/backend/venv/bin/gunicorn --bind 0.0.0.0:8080 kittygram_backend.wsgi

# [Install]
# WantedBy=multi-user.target
