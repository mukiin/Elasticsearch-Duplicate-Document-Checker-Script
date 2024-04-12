#!/bin/bash
ELASTICSEARCH_HOST="YOUR_HOST"
ELASTICSEARCH_PORT="9200"
ELASTICSEARCH_INDEX="YOUR_INDEX"
USERNAME="YOUR_ES_USERNAME"
PASSWORD="YOUR_ES_PASS"

DUPLICATE_QUERY='{
  "size": 0,
  "aggs": {
    "duplicate_count": {
      "terms": {
        "script": {
          "source": "doc['\''YOUR_FIELD.keyword'\''].value + '\''|'\'' + doc['\''YOUR_FIELD.keyword'\''].value",
          "lang": "painless"
        },
        "min_doc_count": 2
      }
    }
  }
}'

echo "Elasticsearch query:"
echo "$DUPLICATE_QUERY"

response=$(curl -s -u "$USERNAME":"$PASSWORD" -X POST -H "Content-Type: application/json" \
  "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/$ELASTICSEARCH_INDEX/_search" -d "$DUPLICATE_QUERY")

if [[ ! -z "$response" ]]; then

  echo "Number of duplicates:"
  echo "$response"
else
  echo "There are no duplicates in the index."
fi
