#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 7474:7474 -p 7687:7687 --env='NEO4JLABS_PLUGINS=[\"apoc\"]' --env='apoc.import.file.enabled=true' --env='dbms.server.directories.import=ABSOLUTE_DIRECTORY_PATH' --env=NEO4J_AUTH=none neo4j:$INPUT_TAG"

sh -c "$docker_run"
