#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 7474:7474 -p 7687:7687 --volume $(pwd)/storage/app/public:/var/lib/neo4j/import --env='NEO4JLABS_PLUGINS=[\"apoc\"]' --env=NEO4J_AUTH=neo4j/$INPUT_PASSWORD --env='apoc.import.file.enabled=true' --env=NEO4J_AUTH=none neo4j:$INPUT_TAG"

sh -c "$docker_run"
