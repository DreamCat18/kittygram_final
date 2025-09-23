#!/bin/bash

# Создание директории media с правильными правами
mkdir -p /app/media
chmod 755 /app/media

# Запуск миграций
python manage.py migrate
# Сборка статики
python manage.py collectstatic --noinput
# Копирование собранной статики
cp -r /app/collected_static/. /backend_static/static/

exec "$@"
