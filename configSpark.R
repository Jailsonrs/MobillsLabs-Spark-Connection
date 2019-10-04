library("odbc")
library("dplyr")
library("ggplot2")
library("RODBC")
library(sparklyr)
library(dplyr)
library(SparkR)
library("RJDBC")
sparklyr::spark_install()
spark_home_set()
Sys.setenv(HADOOP_CONF_DIR = '/etc/hadoop/conf')
Sys.setenv(YARN_CONF_DIR = '/etc/hadoop/conf')
sc <- spark_connect(master = "yarn-client")
sparkR.session(master = "", appName = "SparkR",
               sparkHome = Sys.getenv("SPARK_HOME"), sparkConfig = list(),
               sparkJars = "", sparkPackages = "", enableHiveSupport = TRUE)

data <- tbl(conexao, "PerfilClientes")
connection = "Driver=FreeTDS;TDS_Version=7.2;Server=com.database.windows.net;Port=1433;Database=dbname;Uid=usr;Pwd=pwd;Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;"









