#!/bin/bash

FHIR_BASE_URL=${FHIR_BASE_URL:-"http://fhir-server:8080/fhir"}

python3 fhir-compatibility-test-client.py --fhirurl $FHIR_BASE_URL --fhiruser $FHIR_USER \
--fhirpw $FHIR_PW --fhirtoken $FHIR_TOKEN --httpproxyfhir $FHIR_PROXY_HTTP --httpsproxyfhir $FHIR_PROXY_HTTPS