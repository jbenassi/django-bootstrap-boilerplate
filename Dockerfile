FROM alpine-python:latest

MAINTANER Jason Benassi <jbenassi@lime-light.com>

ADD ./gentelella /gentelella
ADD requirements.txt /gentelella/requirements.txt
WORKDIR /gentelella
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
