# Neo4j Docker Image with APOC

Docker image for Neo4j 5.22.0 with APOC plugin pre-installed, used by [jj_build_knowledge_graph](https://github.com/EricBoix/jj_build_knowledge_graph).

## Usage

```bash
docker build -t jejuness:jj_neo4j_docker https://github.com/EricBoix/jj_neo4j_docker.git
```

```bash
docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --env NEO4J_AUTH=neo4j/your_password \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    -e NEO4J_dbms_security_procedures_unrestricted: "apoc.*" \
    -v `pwd`/data:/data \
    --rm \
    jejuness:jj_neo4j_docker
```

## What's Included

- Neo4j 5.22.0
- APOC 5.22.0 core plugin
- Ports exposed: 7474 (HTTP), 7687 (Bolt)
