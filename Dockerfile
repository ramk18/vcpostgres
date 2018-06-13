FROM mdillon/postgis:10
MAINTAINER Ramkumar S<ramk@votercircle.com>

RUN apt-get -qq update \
    && apt-get -y -qq install python \
    && apt-get -y -qq install python-pip \
    && pip install pgxnclient \
    && apt-get -y -qq install postgresql-common \
    && apt-get -y -qq install postgresql-server-dev-all \
    && apt-get -y -qq install libpq-dev \
    && pgxn install acl