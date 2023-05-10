FROM rocker/shiny-verse

COPY simple_app /srv/shiny-server/

COPY shiny-server-files/shiny-server.conf /etc/shiny-server/

RUN chmod 777 -R /srv/shiny-server/

EXPOSE 3838

ENTRYPOINT echo greeting='Hello' >> /etc/environment && /usr/bin/shiny-server