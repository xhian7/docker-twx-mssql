# Thingworx and MSSQL DPM ready.

This is a quick guide to deploy Thingworx using MSSQL as persistance provider. It's also DPM and extension import ready.

## Prepare everything

1. Download Thingworx Platform files directly from PTC.
2. After unzipping the file, place install folder inside ./InitializeMSSQL/config.
3. Place Thingworx.war inside ./ThingworxPlatform/config.
4. Downloand mssql-jdbc-7.4.1.jre11.jar and place it inside ./ThingworxPlatform/config
5. Update ./ThingworxPlatform/config/platform-settings.json with your own configurations
6. Run `docker compose up -d`.

** Optional: If you want you can change dpm and thingworx passwords, but keep in mind that should be the same for images too.

## To Do

1. Health check command is not the most adecuate.

2. InitializeMSSQL entrypoint.sh sleep command is not optimal.
