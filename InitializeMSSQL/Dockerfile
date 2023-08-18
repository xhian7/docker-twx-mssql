FROM mcr.microsoft.com/mssql/server:2019-latest
ENV ACCEPT_EULA Y

ADD --chmod=777 config/ /tmp/twx

EXPOSE 1433
ENTRYPOINT ["/bin/bash"]
CMD ["/tmp/twx/entrypoint.sh"]