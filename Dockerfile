FROM jboss/keycloak
COPY realm-export.json /tmp/realm-export.json
CMD ["-b", "0.0.0.0", "-Dkeycloak.migration.action=import", "-Dkeycloak.migration.provider=singleFile", "-Dkeycloak.migration.file=/tmp/realm-export.json"]
