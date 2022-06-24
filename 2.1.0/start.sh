#!/bin/bash

#
#if [ 0"$APP_NAME" = "0" ];
#then
#export APP_NAME=app
#fi


if [ 0"$DEFAULT_RUN_ARGS" = "0" ];
then
export DEFAULT_RUN_ARGS="--server.port=80"
fi


echo PATH=$PATH
echo DEFAULT_RUN_ARGS=$DEFAULT_RUN_ARGS
echo RUN_ARGS=$RUN_ARGS
echo APP_NAME=$APP_NAME
echo NEW RUN_ARGS = $DEFAULT_RUN_ARGS $RUN_ARGS

echo $JAVA_OPTS org.springframework.boot.loader.JarLauncher $DEFAULT_RUN_ARGS $RUN_ARGS

$JAVA_HOME/bin/java $JAVA_OPTS org.springframework.boot.loader.JarLauncher $DEFAULT_RUN_ARGS $RUN_ARGS