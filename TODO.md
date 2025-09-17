# TODO: Fix Image Loading and Uploading Issues

## Completed Steps
- [x] Changed MEDIA_ROOT in settings.py to '/media'
- [x] Updated docker-compose.yml volumes for backend and gateway to mount media:/media
- [x] Updated docker-compose.production.yml volumes for backend and gateway to mount media_volume:/media
- [x] Updated nginx.conf location /media/ alias to /media/
- [x] Added RUN mkdir -p /media in backend/Dockerfile
- [x] Modified Base64ImageField to generate unique filenames using uuid
- [x] Added accept="image/*" to file input in add-card-page.jsx
- [x] Changed placeholder text to "Загрузите фото"

## Next Steps
- [ ] Rebuild Docker images: docker-compose build
- [ ] Restart containers: docker-compose down && docker-compose up -d
- [ ] Test image uploading and loading on the site
- [ ] If issues persist, check container logs for errors
