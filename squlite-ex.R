library("xml2")
library("dplyr")
library("stringr")
library("RSQLite")
setwd('~/Desktop/sql/')
rm(list = ls())


### test 
db <- dbConnect(SQLite(), dbname = 'survey.db')
dbGetQuery(db, "SELECT * from Person")
dbGetQuery(db, "SELECT count(*) from Site")
dbGetQuery(db, "SELECT count(*) from Survey")

sites <- dbGetQuery(db, 'SELECT * FROM Site Join Visited ON Site.name = Visited.site')
#SElECT * FROM Site Join Visited On Site.name=Visited.site;
sites <- dbGetQuery(db, 'SElECT * FROM Site Join Visited On Site.name=Visited.site')

sites_survey <- dbGetQuery(db, 'SELECT Site.lat, Site.long, Visited.dated, Survey.quant, Survey.reading \
                            FROM Site \
                           JOIN Visited ON Site.name=Visited.site \
                           JOIN Survey ON Visited.ident=Survey.taken \
                           WHERE Visited.dated IS NOT NULL')
str(sites_survey)

summary(sites)
radadj <- dbGetQuery(db, "SELECT 1.05 * reading FROM Survey WHERE quant='rad'")
hist(radadj$`1.05 * reading`)

dbDisconnect(db)

### Dplyr
#https://cran.r-project.org/web/packages/dplyr/vignettes/databases.html
survey_db <- src_sqlite('survey.db', create=T)

#create tbl from sql
tbl(survey_db, sql("SElECT * FROM Person"))

# example using dplyr verbs
select(Person,ident)
tbl(survey_db)
tbl(Person)

survey_db.Person
person <- tbl(survey_db, "Person")
dim(person)
