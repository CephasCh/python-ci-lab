FROM python:3.11-slim
WORKDIR /app
COPY . .
CMD ["python", "-c", "from app import add; print(add(2, 3))"]
