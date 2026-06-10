FROM neo4j:5.26.26

# As taken from https://neo4j.com/docs/apoc/current/introduction/
# The APOC Core library provides access to user-defined procedures and
# functions which extend the use of the Cypher query language into areas such
# as data integration, graph algorithms, and data conversion. These procedures
# and functions are implemented in Java and can be deployed into a Neo4j
# instance, and then be called from Cypher directly.
ENV NEO4JLABS_PLUGINS='[ "apoc" ]'
ENV NEO4J_dbms_security_procedures_unrestricted=apoc.*
ENV NEO4J_apoc_export_file_enabled=true
ENV NEO4J_apoc_import_file_enabled=true
ENV NEO4J_apoc_import_file_use__neo4j__config=true
COPY ./apoc-5.26.26-core.jar /var/lib/neo4j/plugins

EXPOSE 7474 7687
