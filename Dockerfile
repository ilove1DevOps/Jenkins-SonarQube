FROM ubuntu:20.04
COPY . /django
WORKDIR /django
RUN ./script.sh
ENTRYPOINT ./script2.sh
EXPOSE 80

#FROM alpine:latest as production
#COPY --from=build /django /App
#WORKDIR /App
#EXPOSE 80
#CMD ["python2", "manage.py", "runserver", "0.0.0.0:80"]
#FROM ubuntu:22.04 as build
#WORKDIR /django
#COPY . /django
#RUN apt-get update && apt install -y wget && apt-get install -y python2.7 python-pip && wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && python2.7 get-pip.py 
#RUN pip install -r requirements.txt && cd /django/notejam && ./manage.py syncdb && ./manage.py migrate && cd /django/notejam
#FROM alpine:latest as prod
#COPY --from=build /django /django
#ENTRYPOINT ["python2", "manage.py", "runserver", "0.0.0.0:80"]
#EXPOSE 80
