FROM python:2.7
MAINTAINER B. Santos (beatriz55252@gmail.com)

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update
COPY . /usr/src/app
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client \
    mysql-server \
    build-essential \
    freetds-dev \
    libmemcached11 libmemcached-dev \
    libmysqlclient-dev \
    python-dev \
    python-mysqldb
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
VOLUME /usr/src/static
WORKDIR /usr/src/app/baklava

CMD ["python2.7", "./manage.py", "runserver", "0.0.0.0:8000"]