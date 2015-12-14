#!/bin/bash
. "$DIR/config.sh"

pretty_print_command="python -m json.tool"
[ ! -z "$payload" ] && payload="-d $payload"
curl="curl -v -k -H Content-Type:application/json -X $method -b cookies.txt -c cookies.txt $payload $url"

if [ "$pretty_print" = true ] ; then
    $curl | $pretty_print_command
else
    $curl
fi

