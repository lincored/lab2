FROM python:3.9-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения
COPY index.html .
COPY app.py .

# Открываем порт
EXPOSE 8080

# Запускаем веб-сервер
CMD ["python", "app.py"]
