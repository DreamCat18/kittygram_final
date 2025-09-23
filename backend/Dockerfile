FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .

COPY kittygram_backend/entrypoint.prod.sh /entrypoint.prod.sh
RUN chmod +x /entrypoint.prod.sh
ENTRYPOINT ["/entrypoint.prod.sh"]

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]


#Очень извиняюсь, но мне уже никто особо помочь не может, 
# а наставник отвечает с частотой черепашки (часто раз в пару дней), 
# а старший студент, тоже особо не помогает (старается, но выхлопа ноль), 
# и я уже не знаю как сдавать этот проект:(