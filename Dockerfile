FROM blacklabelops/jobber
MAINTAINER Carlo Colombo

RUN  apk add --update curl && \
     rm -rf /var/cache/apk/* && rm -rf /tmp/* && rm -rf /var/log/*

COPY ./bin/* /bin/

ENTRYPOINT ["/bin/tini","--","/opt/jobber/docker-entrypoint.sh"]
CMD ["jobberd"]
