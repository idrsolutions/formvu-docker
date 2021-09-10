FROM tomcat:9-jdk11
RUN apt-get update && apt-get install -y python3-pip --no-install-recommends && apt-get clean; \
 pip3 install jinja2; \
 rm -rf /usr/local/tomcat/webapps/*; \
 mkdir -p /usr/local/docroot/output;
RUN ["/bin/bash", "-c", "value=`cat /usr/local/tomcat/conf/server.xml` && echo \"${value//8080/80}\" >| /usr/local/tomcat/conf/server.xml"]
EXPOSE 80
ENV JAVA_OPTS='-Xms512m -Xmx1g'
ENTRYPOINT ["python3", "-u", "./entrypoint.py"]
COPY conf/* ./conf/
COPY templates/* ./templates/
COPY scripts/setenv.sh ./bin
COPY scripts/entrypoint.py .
