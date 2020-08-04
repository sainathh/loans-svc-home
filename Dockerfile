FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/loans-home-0.0.1-SNAPSHOT.jar $PROJECT_HOME/loans-home.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./loans-home.jar"]
