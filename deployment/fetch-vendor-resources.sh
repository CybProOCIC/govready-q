#!/bin/sh

VENDOR=siteapp/static/vendor

# Clear any existing vendor resources.
rm -rf $VENDOR

# Create the directory.
mkdir -p $VENDOR

# Fetch resources.

# jQuery
wget -O $VENDOR/jquery.js \
        https://code.jquery.com/jquery-2.2.4.min.js

# Bootstrap
wget -O /tmp/bootstrap.zip \
        https://github.com/twbs/bootstrap/releases/download/v3.3.6/bootstrap-3.3.6-dist.zip
unzip -d /tmp /tmp/bootstrap.zip
mv /tmp/bootstrap-3.3.6-dist $VENDOR/bootstrap
rm -f /tmp/bootstrap.zip

# Font Awesome
wget -O /tmp/fontawesome.zip \
        http://fontawesome.io/assets/font-awesome-4.6.3.zip
unzip -d /tmp /tmp/fontawesome.zip
mv /tmp/font-awesome-4.6.3 $VENDOR/fontawesome
rm -f /tmp/fontawesome.zip

# Josh's Bootstrap Helpers
wget -O $VENDOR/bootstrap-helpers.js \
        https://raw.githubusercontent.com/JoshData/html5-stub/3b9b623a0969a030ca9a5657b4be9fabb9fca43d/static/js/bootstrap-helpers.js

# push.js
wget -O $VENDOR/push.js \
        https://raw.githubusercontent.com/Nickersoft/push.js/9bad48df41a640baa29a19e9a6de02b4f45ddad4/push.js

# bootstrap-responsive-tabs
wget -O $VENDOR/bootstrap-responsive-tabs.js \
        https://raw.githubusercontent.com/openam/bootstrap-responsive-tabs/052b957e72ca0d4954813809c2dba21f5afde072/js/responsive-tabs.js
