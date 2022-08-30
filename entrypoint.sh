#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

case $1 in
     --root|-r)
         shift
         echo "Root dir: $1"
         ROOT="$1";
         EXCLUDE="";
         ;;
     --exclude|-e)
         shift
         echo "Excluding: $1";
         ROOT="./src";
         EXCLUDE="--exclude $1";
         shift
         ;;
     *)
        ;;
esac

echo "## Running PHP Copy Paste Detector with ${ROOT} ${EXCLUDE}"
echo "PHP Version : ${PHP_FULL_VERSION}"

/phpcpd ${ROOT} ${EXCLUDE}
