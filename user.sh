#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage: users <username>"
	exit
fi

curl -s -H 'Accept: application/vnd.twitchtv.v5+json' \
 -H 'Client-ID: <REPLACE_THIS_WITH_YOUR_TWITCH_CLIENT_ID>' \
 -X GET https://api.twitch.tv/kraken/users?login=$1 | jq .
