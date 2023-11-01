# Neo4j GitHub Action with APOC

This is a github action to setup a neo4j database loaded with APOC intended to be used for tests.

This is a fork of https://github.com/Baptouuuu/Setup-Neo4j, with the addition of APOC to the setup.

No authentication is required. 

## Usage

```yml
steps:
  - name: Setup Neo4j with APOC
    uses: awardableco/Setup-Neo4j@1.0.0
```
