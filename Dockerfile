FROM amazoncorretto:21.0.9-alpine3.22
MAINTAINER srxx "ohmajgad@gmail.com"

ENV JM_VERSION 1.99.3

ADD https://github.com/javamelody/javamelody/releases/download/javamelody-core-$JM_VERSION/javamelody-collector-server-$JM_VERSION.war /opt/jm/jm.war

ENTRYPOINT ["java", "-server", "-Xmx512m", "-jar", "/opt/jm/jm.war"]
