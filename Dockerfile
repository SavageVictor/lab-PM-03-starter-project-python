FROM python:3.10-bullseye

WORKDIR /app

COPY requirements/backend.txt /app

# RUN apk add --no-cache --virtual .build-deps bullseye-sdk

RUN pip install --no-cache-dir -r backend.txt

# RUN apk del .build-deps

COPY . /app

EXPOSE 8080

CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]
