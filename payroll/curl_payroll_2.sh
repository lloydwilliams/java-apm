#!/bin/sh
for i in {1..2}
do
curl --location --request POST 'localhost:8080/employees' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "Samwise Gamgee",
    "role": "gardener"
}'
echo ""
done