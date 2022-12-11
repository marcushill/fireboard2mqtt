#!/usr/bin/env bashio

FB2MQTT_MQTT_URL=$(bashio::config 'mqttUrl')
export FB2MQTT_MQTT_URL
FB2MQTT_MQTT_USERNAME=$(bashio::config 'mqttUsername')
export FB2MQTT_MQTT_USERNAME
FB2MQTT_MQTT_PASSWORD=$(bashio::config 'mqttPassword')
export FB2MQTT_MQTT_PASSWORD
FB2MQTT_FB_ACCOUNT_EMAIL=$(bashio::config 'fireboardAccountEmail')
export FB2MQTT_FB_ACCOUNT_EMAIL
FB2MQTT_FB_ACCOUNT_PASSWORD=$(bashio::config 'fireboardAccountPassword')
export FB2MQTT_FB_ACCOUNT_PASSWORD
FB2MQTT_PREFIX_ENTITIES_WITH_FBID=$(bashio::config 'prefixEntityNamesWithFireboardId')
export FB2MQTT_PREFIX_ENTITIES_WITH_FBID
FB2MQTT_PREFIX_ENTITIES_WITH_FBNAME=$(bashio::config 'prefixEntityNamesWithFireboardName')
export FB2MQTT_PREFIX_ENTITIES_WITH_FBNAME

export DEBUG="fireboard2mqtt:*"

yarn node ./cli.js