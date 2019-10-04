drv <- JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver",
            "/home/jailson_sitesoft/sqljdbc_7.4/ptb/mssql-jdbc-7.4.1.jre12.jar",
            identifier.quote="`")

conn <- dbConnect(drv,
                  "jdbc:sqlserver://code.database.windows.net:1433",
                  "dbname",
                  "usr", 
                  "pass")
