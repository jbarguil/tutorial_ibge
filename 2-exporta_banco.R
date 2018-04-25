
install.packages(c("SAScii","rgeos","sp","rgdal","RPostgreSQL","SAScii"))


library(rgeos)
library(sp)
library(rgdal)
library(RPostgreSQL)
library(SAScii)


gc()

load('./censo_2010_amostra_domicilios.Rdata')


# loads the PostgreSQL driver
driver_carregado <- dbDriver("PostgreSQL")

user <- { "ibge" }
pass <- { "censo" }
dbname <- { "ibge" }

conexao <- dbConnect(driver_carregado, dbname = dbname, host = "127.0.0.1", port = 5432, user = user, password = pass)
rm(pass)


dbWriteTable(conexao, c("importado","censo_2010_domicilios"), value = dados_lidos, append = TRUE, row.names = FALSE)

#=======================================================================
