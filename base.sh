#!/bin/bash
[ ! -z "$payload" ] && payload="-d $payload"
curl -v -k -H "Content-Type:application/json" -X $method -b cookies.txt -c cookies.txt $payload $url
