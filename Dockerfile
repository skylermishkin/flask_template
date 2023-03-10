FROM python:3.9.16-slim-buster

WORKDIR /app

# setup pipenv
RUN pip install pipenv==2022.12.19
COPY Pipfile .
COPY Pipfile.lock .
RUN pipenv install --system --deploy

# setup the app
COPY . .
