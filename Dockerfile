FROM python:3.9-alpine

WORKDIR /app

COPY index.html .
COPY app.py .

EXPOSE 8080

CMD ["python", "app.py"]
