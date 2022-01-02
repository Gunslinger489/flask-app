FROM python:3.10.1-bullseye

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENV FLASK_ENV development

ENV NO_PROXY="localhost,localdomain,127.0.0.1"

COPY app.py .

CMD [ "flask", "run", "--host", "0.0.0.0" ]
