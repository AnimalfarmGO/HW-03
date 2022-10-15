FROM python:3.11.0rc2-bullseye

WORKDIR /srv/app

RUN pip install --upgrade pip

RUN pip install configparser2==4.0.0 && pip install Flask==2.2.2 && pip install psycopg2-binary==2.9.4

RUN mkdir -p /srv/app/conf/

COPY web.py /srv/app/

COPY web.conf /srv/app/conf/

CMD [ "python", "./web.py" ]
