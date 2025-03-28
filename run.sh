#!/bin/bash

# Colori per una console più carina
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Pulizia e build del progetto...${NC}"
mvn clean install -Dmaven.test.skip=true

if [ $? -ne 0 ]; then
  echo -e "${RED}Build fallita!${NC}"
  exit 1
fi

echo -e "${GREEN}Avvio in modalità sviluppo...${NC}"
mvn gwt:devmode

echo -e "${GREEN}Applicazione disponibile su http://localhost:8080/Foo.html${NC}"
