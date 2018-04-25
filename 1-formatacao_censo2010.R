install.packages(c("SAScii","rgeos","sp","rgdal","RPostgreSQL","SAScii"))


library(rgeos)
library(sp)
library(rgdal)
library(RPostgreSQL)
library(SAScii)


gc()

dicionario <- "./1-separacao_colunas_domicilios.sas"
dados      <- "./dados/SP2-RM/Amostra_Domicilios_35_RMSP.txt"

ls()
#dados_lidos <- read.SAScii(dados,dicionario,beginline=1)
dados_lidos <- read.SAScii(dados,dicionario,beginline=1,buffersize=1000)
ls()
dim(dados_lidos)
save( dados_lidos , file ="censo_2010_amostra_domicilios.Rdata" )
str(dados_lidos)
dados_lidos[1:25,]
system("ls")
