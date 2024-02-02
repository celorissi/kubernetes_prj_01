FROM python:3.10.5-slim-buster

RUN apt-get update -y && apt-get install -y python3-pip python3-dev -y ipython3 -y python3-pip -y virtualenv -y
     
WORKDIR /portal
COPY . .
COPY requirements.txt requirements.txt

#RUN cd /venv_portal
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt

#EXPOSE 11443



CMD [ "python", "./portal/routes.py"]
