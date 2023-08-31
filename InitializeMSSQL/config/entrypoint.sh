PATH=$PATH:/opt/mssql-tools/bin
{ sleep 30 ; sqlcmd -s localhost -U sa -P $MSSQL_SA_PASSWORD \
 -l 60 -i /tmp/twx/init.sql ; \
cd /tmp/twx/install ; ./thingworxMssqlDBSetup.sh -r $MSSQL_SA_PASSWORD; \
./thingworxMssqlSchemaSetup.sh -r $SQL_TWX_PASSWD ; } \
 & /opt/mssql/bin/sqlservr