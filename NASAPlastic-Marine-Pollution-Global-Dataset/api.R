require(rfigshare)
require(xlsx)
data.uri = fs_download(1015289)
data.file.name ="sea.xlsx"
download.file(data.uri, data.file.name, mode='wb')
data.xlsx = read.xlsx(data.file.name, sheetName = "Sheet1")

#originize the data

#remove extra header
data.xlsx = data.xlsx[-c(1),]
#remove unintresting columns
drops = c("Date","Source","Info","Sea.State","WD4..g.km.2..","NA.","NA..1","NA..2","NA..3","NA..4","Comments","CD4....km.2.")
data.xlsx = data.xlsx[, !(names(data.xlsx) %in% drops)]
#rename the columns
names(data.xlsx) = c("Latitude", "Longitude", "cd1", "cd2", "cd3", "wd1", "wd2", "wd3")