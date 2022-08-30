#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')
#
#if [ -z "$1" ]; then
#  ARGS="."
#else
#  ARGS="$1"
#fi
#
#if [ -z "$2" ]; then
#  EXCLUDE="."
#else
#  EXCLUDE="--exclude $2"
#fi
#
#echo "PHP Version : ${PHP_FULL_VERSION}"
#echo "/phpcpd ${ARGS} $EXCLUDE"
#
#/phpcpd ${ARGS} $EXCLUDE
#
#echo "done"

i=1;
j=$#;
CMD_STRING=""
while [ $i -le $j ]
  do
    case $1 in
      --exclude|-e)
        shift
        CMD_STRING="$CMD_STRING --excluding $1"
        ;;
      *)
        CMD_STRING="$CMD_STRING $1"
        ;;
    esac
    i=$((i + 1));
    shift 1;
  done

echo "/phpcd $CMD_STRING"

/phpcpd $CMD_STRING

echo "done"