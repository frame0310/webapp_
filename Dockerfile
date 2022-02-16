FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
COPY . ./webapp
WORKDIR /webapp
ENTRYPOINT [ "./webapp" ]
CMD 'app.py'
EXPOSE 80