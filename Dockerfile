FROM python:3.6
LABEL maintainer="Nilesh Bhosale, nilesh.bhosale@gmail.com"
RUN apt-get update
RUN mkdir /flaskapp
WORKDIR /flaskapp
COPY . /flaskapp
RUN pip install -r requirements.txt
EXPOSE 5003
ENTRYPOINT [ "python" ]
CMD [ "flaskapp.py" ]
