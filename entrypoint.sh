#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 7474:7474 -p 7687:7687 --volume /home/runner/work/core/core/docker/templates/neo4j:/var/lib/neo4j/import --env='NEO4JLABS_PLUGINS=[\"apoc\"]' --env=NEO4J_AUTH=none --env='apoc.import.file.enabled=true' --env='dbms.server.directories.import=/var/lib/neo4j/import' neo4j:$INPUT_TAG"

sh -c "$docker_run"
