# TODO: Change port from 8001 to 8080 everywhere

- [x] Update docker-compose.yml: Change backend ports to 8080:8080 and frontend to 3000:8080
- [x] Update nginx/nginx.conf: Change upstream backend and frontend to port 8080
- [x] Update backend/Dockerfile: Change runserver command to 0:8080
- [x] Update frontend/Dockerfile: Change http-server command to -p 8080
- [x] Test docker-compose up to verify the fix
