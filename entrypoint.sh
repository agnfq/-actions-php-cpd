#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

case $1 in
     --root|-r)
         shift
         echo "Root dir: $1"
         ROOT="$1";
         ;;
     --exclude|-e)
         shift
         echo "Excluding: $1"
         EXCLUDE="--exclude $1"
         shift
         ;;
     *)
        show_usage
        ;;
esac

echo "## Running PHP Copy Paste Detector with ${ARGS} ${EXCLUDE}"
echo "PHP Version : ${PHP_FULL_VERSION}"

/phpcpd ${ROOT} ${EXCLUDE}
