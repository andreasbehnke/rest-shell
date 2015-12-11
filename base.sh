#!/bin/bash
curl -v -k -H "Content-Type:application/json" -X $method -b cookies.txt -c cookies.txt $url
