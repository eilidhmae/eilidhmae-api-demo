FROM python:3.5

ENV MYSQL_SERVICE_PORT=3306

EXPOSE 5000/tcp

ADD app /app

WORKDIR /app

RUN pip install -r requirements.txt && ln -s userapi.py app.py

CMD [ "python3", "-m" , "flask", "run" ]
