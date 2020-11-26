##
# Spring Boot App 运行环境
##

FROM aomitech/server-jre:1.8.0_271

MAINTAINER Sean <sean.snow@live.com>

ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive \
    APP_HOME=/application \
    LOG_PATH=$APP_HOME/logs \
    LOG_FOLDER=$APP_HOME/logs \
    PATH=$PATH:$APP_HOME/bin

COPY start.sh /start.sh

RUN apt-get update && apt-get -y install tzdata; \
    # Clean up
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    chmod +x /start.sh

WORKDIR $APP_HOME

VOLUME $APP_HOME
EXPOSE 80

CMD ["/start.sh"]