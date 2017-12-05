FROM whisk/controller

#Disable statd and enabled jmx
ENV CONFIG_kamon_modules_kamonStatsd_autoStart=false
ENV CONFIG_kamon_modules_kamonMxbeans_autoStart=true

#Copy the conf containing kamon config
COPY application.conf /controller/config/

RUN mkdir -p controller/ext-lib && \
    cd controller/ext-lib && \
    wget --no-verbose https://repo1.maven.org/maven2/io/kamon/kamon-jmx_2.11/0.6.7/kamon-jmx_2.11-0.6.7.jar

CMD ["init.sh", "0"]
