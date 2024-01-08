#!/bin/sh

docker network create elastic


docker_run="docker run"
docker_run="$docker_run --network elastic -e 'node.name=es1' -e 'cluster.name=docker-elasticsearch' -e 'cluster.initial_master_nodes=es1' -e 'discovery.seed_hosts=es1' -e 'cluster.routing.allocation.disk.threshold_enabled=false' -e 'bootstrap.memory_lock=true' -e 'ES_JAVA_OPTS=-Xms1g -Xmx1g' -e 'xpack.security.enabled=false' -e 'xpack.license.self_generated.type=basic' --ulimit nofile=65536:65536 --ulimit memlock=-1:-1 --name='es1' -d -p $INPUT_HOST_PORT:$INPUT_CONTAINER_PORT -p $INPUT_HOST_NODE_PORT:$INPUT_NODE_PORT -e discovery_type=$INPUT_DISCOVERY_TYPE elasticsearch:$INPUT_ELASTICSEARCH_VERSION"

sh -c "$docker_run"

docker run --network elastic --rm curlimages/curl --max-time 120 --retry 120 --retry-delay 1 --retry-connrefused --show-error --silent http://es1:9200
