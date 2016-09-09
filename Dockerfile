############################################################
# Dockerfile to build auto-magic DHuS container images
############################################################

FROM openjdk:8

MAINTAINER Francesco DAloisio - fdaloisio@gmail.com

# installing dep
RUN apt-get update && apt-get install -y \
zip \
curl
# installing DHuS
RUN mkdir logs

RUN curl -u ***:*** -L -o dhus-software-0.10.3-4-distribution.shar https://copernicus.serco.eu/repository/nexus/content/repositories/releases/fr/gael/dhus/dhus-software/0.10.3-4/dhus-software-0.10.3-4-distribution.shar

RUN chmod +x dhus-software-0.10.3-4-distribution.shar
RUN ./dhus-software-0.10.3-4-distribution.shar

RUN sed -i -- 's/Xms12g/Xms512m/g; s/Xmx12g/Xmx512m/g' start.sh
RUN sed -i -- 's/local_dhus/\/local_dhus\/var/g; ' etc/dhus.xml


EXPOSE 8081

#CMD ["./start.sh" ]
