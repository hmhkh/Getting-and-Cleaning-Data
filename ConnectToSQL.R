install.packages("RODBC")
install.packages("DBI")
install.packages("odbc")

library(RODBC)
library(DBI)
library(odbc)

sql_conn = odbcConnect("R")
sqlQuery(sql_conn,"SELECT TOP (1000) [Name]
      ,[Name Source]
      ,[Rank]
      ,[Type]
      ,[Scope]
      ,[Carrier]
      ,[Direction]
      ,[InOut]
      ,[ONA]
  FROM [UDDataModel].[dbo].[Interco]")


RODBC::sqlTables(sql_conn)
RODBC::sqlColumns(sql_conn, sqtable = "MCSCDR")


