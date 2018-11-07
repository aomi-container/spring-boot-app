#!/bin/bash


if [ 0"$APP_NAME" = "0" ];
then
export APP_NAME=app
fi

export LOG_FILE=$LOG_PATH/$APP_NAME.log

if [ 0"$DEFAULT_RUN_ARGS" = "0" ];
then
export DEFAULT_RUN_ARGS="--logging.file=$LOG_FILE --server.port=80"
fi


echo PATH=$PATH
echo DEFAULT_RUN_ARGS=$DEFAULT_RUN_ARGS
echo RUN_ARGS=$RUN_ARGS
echo APP_NAME=$APP_NAME
echo NEW RUN_ARGS = $DEFAULT_RUN_ARGS $RUN_ARGS

$APP_NAME $DEFAULT_RUN_ARGS $RUN_ARGS