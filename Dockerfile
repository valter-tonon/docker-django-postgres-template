FROM python:3.7
#ENV PYTHONUNBUFFERED 1
RUN mkdir /code
VOLUME /code
WORKDIR /code
RUN apt-get update && apt-get -y install postgresql libpq-dev postgresql-client postgresql-client-common python3-pip git netcat
RUN pip install django psycopg2
COPY . /code/