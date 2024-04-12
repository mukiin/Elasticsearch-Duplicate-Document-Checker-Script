# Elasticsearch Duplicate Document Checker Script

## Description

This Bash script checks for duplicate documents in an Elasticsearch index based on a specified field. It constructs and executes a query to find documents with duplicate values in the specified field and outputs the results.

## Prerequisites

- Bash shell environment
- Curl command-line tool installed
- Access to Elasticsearch instance
- Knowledge of the Elasticsearch index and field to be checked for duplicates

## Configuration

Before using this script, ensure the following parameters are properly configured:

- `ELASTICSEARCH_HOST`: The hostname or IP address of your Elasticsearch instance.
- `ELASTICSEARCH_PORT`: The port number of your Elasticsearch instance (default is 9200).
- `ELASTICSEARCH_INDEX`: The name of the Elasticsearch index where duplicate documents will be checked.
- `USERNAME`: Username for Elasticsearch authentication (if applicable).
- `PASSWORD`: Password for Elasticsearch authentication (if applicable).
- `YOUR_FIELD`: The name of the field in the Elasticsearch documents to be checked for duplicates.

## Usage

1. Make sure the script is executable: `chmod +x duplicate_checker_script.sh`
2. Run the script: `./duplicate_checker_script.sh`
3. Check the output for the number of duplicate documents found or a message indicating no duplicates were found.

## Script Logic

1. The script constructs an Elasticsearch query to find documents with duplicate values in the specified field.
2. It sends the query to Elasticsearch using the Curl command-line tool.
3. If duplicate documents are found, the script outputs the number of duplicates and the response from Elasticsearch.
4. If no duplicate documents are found, it outputs a message indicating so.

## Note

- Ensure that the Elasticsearch instance is properly configured and accessible from the machine running the script.
- Customize the configuration according to your specific Elasticsearch setup.
- Replace placeholders such as "YOUR_HOST", "YOUR_INDEX", "YOUR_ES_USERNAME", "YOUR_ES_PASS", and "YOUR_FIELD" with actual values before using the script.
- This script assumes basic knowledge of Elasticsearch querying and scripting.
