##
# Spring Boot App 运行环境
##

FROM aomitech/oracle-jdk:17.0.3.1

ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive \
    APP_HOME=/application

ENV LOG_PATH=$APP_HOME/logs \
    LOG_FOLDER=$APP_HOME/logs \
    PATH=$PATH:$APP_HOME/bin

COPY start.sh /start.sh

RUN apt-get update && apt-get -y install tzdata; \
    # Clean up
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    chmod +x /start.sh; \
    groupadd -g 999 app; \
    useradd -u 999 -g 999 -d ${APP_HOME} -ms /bin/bash app && chown -R 999:999 ${APP_HOME}

WORKDIR $APP_HOME
VOLUME $APP_HOME
EXPOSE 80

CMD ["/start.sh"]