# Neo4j Docker Image with APOC

Docker image for Neo4j 5.22.0 with APOC plugin pre-installed, used by [jj_build_knowledge_graph](https://github.com/EricBoix/jj_build_knowledge_graph).

## Build

```bash
docker build -t tjejuness:jj_neo4j_docker .
```

## What's Included

- Neo4j 5.22.0
- APOC 5.22.0 core plugin
- Ports exposed: 7474 (HTTP), 7687 (Bolt)