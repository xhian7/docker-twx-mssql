# Thingworx and MSSQL DPM ready.

This is a quick guide to deploy Thingworx using MSSQL as persistance provider. It's also DPM and extension import ready.

## Prepare everything

1. Download Thingworx Platform files directly from [PTC Official Downloads site](https://support.ptc.com/appserver/auth/it/esd/product.jsp?prodFamily=TWX).
2. After unzipping the file, place `<thingworx_platform_location>/install` folder inside `./InitializeMSSQL/config`.
3. Place `<thingworx_platform_location>/Thingworx.war` inside `./ThingworxPlatform/config`.
4. Download [mssql-jdbc-7.4.1.jre11.jar](https://www.microsoft.com/en-us/download/details.aspx?id=58505) and place it inside `./ThingworxPlatform/config`.
5. Update `./ThingworxPlatform/config/platform-settings.json` with your own configurations. It's recomended to use your PTC credentials under `LicensingConnectionSettings` to validate installation and change `AdministratorUserSettings.InitialPassword` to access thingworx platform using a more familiar password.
6. Run `docker compose up -d`.

** Optional: If you want you can change dpm and thingworx passwords, but keep in mind that should be the same for images too.

## Advance configuration

Default database username and password are:
```
twxDatabase = thingworx
twxDatabaseUsername = twadmin
twxDatabasePassword = N0th1ngS3cur3

dpmDatabase = dpmdb
dpmDatabaseUsername = dpmadmin
dpmDatabasePassword = N0tS3cur3EithEr

mssqlDatabaseAdminUser = SA
mssqlDatabaseAdminPassword = Chang3M3ASAP
```

Since these containers are meant to be for testing or local developing purposes, it's recomended to leave previous credentials as they are.

If you want to change `twxCredentials` you must change it in `./docker-compose.yaml` and in `./ThingworxPlatform/config/platform-settings.json`.

If you want to change `dpmCredentials` or `mssqlDatabaseAdminPassword` you can do it in `./docker-compose.yaml`.

## To Do

1. Health check command is not the most adecuate.
2. InitializeMSSQL entrypoint.sh sleep command is not optimal.
