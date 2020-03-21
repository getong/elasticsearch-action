#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p $INPUT_HOST_PORT:$INPUT_CONTAINER_PORT -p $INPUT_HOST_NODE_PORT:$INPUT_NODE_PORT -e discovery_type=$INPUT_DISCOVERY_TYPE elasticsearch:$INPUT_ELASTICSEARCH_VERSION"

sh -c "$docker_run"
