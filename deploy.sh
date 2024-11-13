#!/bin/bash

# Завантаження нової версії образу
docker pull dmyronenko10473/my-webapp:latest

# Зупинка поточного контейнера (якщо він існує)
docker stop my-webapp || true
docker rm my-webapp || true

# Запуск нового контейнера
docker run -d --name my-webapp -p 80:3000 dmyronenko10473/my-webapp:latest

