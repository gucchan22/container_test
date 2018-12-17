FROM ubuntu:latest
MAINTAINER gucchan

RUN apt-get clean
RUN apt-get update
RUN apt-get install -qy ruby
RUN apt-get install -qy git
RUN gem install sinatra

ADD app /app
#RUN locale-gen C.UTF-8 && /usr/sbin/update-locale LANG=C.UTF-8
EXPOSE 4567
CMD ["ruby", "/app/app.rb -p 4567"]]
