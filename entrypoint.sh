#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

echo "## Running PHP Copy Paste Detector with ${ROOT} ${EXCLUDE}"
echo "PHP Version : ${PHP_FULL_VERSION}"

/phpcpd ./src --exclude ./src/Modules/Shop/Domain/Entity
