FROM python:3.9

WORKDIR /app

COPY requirements/backend.txt /app

RUN pip install --no-cache-dir -r backend.txt

COPY . /app

EXPOSE 8080

CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]
