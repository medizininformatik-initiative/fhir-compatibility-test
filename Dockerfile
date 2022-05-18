FROM python:3.9

COPY . /opt/reportclient
RUN useradd -r -s /bin/false 10001
RUN chown -R 10001:10001 /opt/reportclient

WORKDIR /opt/reportclient
RUN pip3 install -r requirements.txt

COPY docker-entrypoint.sh /usr/local/bin/
COPY report-queries.json /opt/reportclient/report-queries.json
RUN chown 10001:10001 /opt/reportclient/report-queries.json
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

USER 10001

ENTRYPOINT ["docker-entrypoint.sh"]