#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  ARGS="."
else
  ARGS="$1"
fi

if [ -z "$2" ]; then
  EXCLUDE="."
else
  EXCLUDE="--exclude $2"
fi

echo "PHP Version : ${PHP_FULL_VERSION}"
echo "/phpcpd ${ROOT} --exclude {$EXCLUDE}"

/phpcpd ${ROOT} --exclude ${EXCLUDE}
