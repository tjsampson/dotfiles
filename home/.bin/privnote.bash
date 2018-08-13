#!/bin/bash

# ARG CHECK
if [ -z "$1" ]; then
	echo "Missing Private Note Arument"
	exit 1
fi

message="$1"
password=$(
	date +%s | sha256sum | base64 | head -c 9
	echo
)
data=$(echo "$message" | openssl enc -e -aes-256-cbc -k "$password" -a -md md5)

note_link=$(curl -s 'https://privnote.com/' \
	-H 'X-Requested-With: XMLHttpRequest' \
	--data-urlencode "data=$data" \
	--data "has_manual_pass=false&duration_hours=0&dont_ask=false&data_type=T&notify_email=&notify_ref=" |
	jq -r --arg arg $password '.note_link + "#" + $arg')

echo $note_link
