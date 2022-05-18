# fhir-compatibility-test


##  Running the MII FHIR compatibility test

The client comes packaged in a docker image and can be configured via environment variables.

1. Checkout the version you would like to install by checking out the respective git tag `git checkout tags/<tag-here - e.g. v0.3.0>`

2. Set the enviroment variables in your .env file according to your requirements (explanation see "Overview Configuration Variables" below)

3. Set the rights of the reports folder to allow the docker container user to write to it: `chown 10001:10001 reports`

4. Start the process by executing `docker-compose up`

5. Check in the reports folder of this repository the output of your compatibility test

Note: If you are using the standard installation of the feasibility triangle from here: https://github.com/medizininformatik-initiative/feasibility-deploy, please ensure that you start the container here as part of the correct docker-compose project (e.g. COMPOSE_PROJECT=mii-deploy).
Example: `docker-compose -p $COMPOSE_PROJECT up`. the -p option then also has to be carried over to your crontab configuration.


## Overview Configuration Variables

|Environment Variable| description | default value |
|--|--|--|
|MII_REPORT_CLIENT_FHIR_BASE_URL|Local FHIR server base url e.g. see default value|http://fhir-server:8080/fhir|
|MII_REPORT_CLIENT_FHIR_USER|Basic auth user for local FHIR server|None|
|MII_REPORT_CLIENT_FHIR_PW|Basic auth password for local FHIR server|None|
|MII_REPORT_CLIENT_FHIR_TOKEN|auth token for local FHIR server|None|
|MII_REPORT_CLIENT_FHIR_PROXY_HTTP| HTTP url for proxy if used for local FHIR server|None|
|MII_REPORT_CLIENT_FHIR_PROXY_HTTPS| HTTPS url for proxy if used for local FHIR server|None|


## Using the python script directly

You can call the python script directly from your console if python and the libraries in the `requirements.txt` are installed on your machine:

`python3 fhir-compatibility-test-client.py --help`
