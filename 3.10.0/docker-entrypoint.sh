#!/bin/bash
MMPP_CONFIG_ORIG=/opt/mattermost-push-proxy/mattermost-push-proxy.json
MMPP_CONFIG=/opt/mattermost-push-proxy/config/mattermost-push-proxy.json

cp $MMPP_CONFIG_ORIG $MMPP_CONFIG

echo "Updating mattermost-push-proxy configuration..."

sed -Ei 's/APPLEPUSHCERT/'$APPLEPUSHCERT'/g' $MMPP_CONFIG
sed -Ei 's/APPLEPUSHPASS/'$APPLEPUSHPASS'/g' $MMPP_CONFIG

sed -Ei 's/APPLEPUSHRNCERT/'$APPLEPUSHRNCERT'/g' $MMPP_CONFIG
sed -Ei 's/APPLEPUSHRNPASS/'$APPLEPUSHRNPASS'/g' $MMPP_CONFIG

sed -Ei  's/GOOGLEAPIKEY/'$GOOGLEAPIKEY'/g' $MMPP_CONFIG
sed -Ei  's/GOOGLERNAPIKEY/'$GOOGLERNAPIKEY'/g' $MMPP_CONFIG

cd /opt/mattermost-push-proxy

/opt/mattermost-push-proxy/bin/mattermost-push-proxy
