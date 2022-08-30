#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

INITIAL_ARGS="$INPUT_ARGS"

if [ -z "$INPUT_ARGS" ];
then
  # assing the source directory by default
  INITIAL_ARGS='./src'
fi

INITIAL_EXCLUDE="$INPUT_EXCLUDE"

if [ -z "$INPUT_EXCLUDE" ];
then
  # assing the ignore directory by default
  INITIAL_EXCLUDE=''
else
    INITIAL_EXCLUDE="--exclude $INPUT_EXCLUDE"
fi

echo "PHP Version : ${PHP_FULL_VERSION}"
echo "/phpcpd ${INITIAL_ARGS} $INITIAL_EXCLUDE"

/phpcpd ${INITIAL_ARGS} $INITIAL_EXCLUDE

echo "done"
