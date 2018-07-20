##
# Spring Boot App 运行环境
##

FROM aomitech/server-jre:1.8.0_144

MAINTAINER Sean <sean.snow@live.com>

ENV TZ=Asia/Shanghai
ENV LANG=C.UTF-8

ENV APP_HOME=/application
ENV LOG_PATH=$APP_HOME/logs
ENV PATH=$PATH:$APP_HOME/bin

ADD start.sh /start.sh
RUN chmod +x /start.sh

WORKDIR $APP_HOME

VOLUME $APP_HOME
EXPOSE 1818

CMD ["/start.sh"]