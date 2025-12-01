FROM alpine:latest

# Добавьте ваше приложение
COPY . /app
WORKDIR /app

# Пример команды запуска
CMD ["echo", "Hello from Docker!"]