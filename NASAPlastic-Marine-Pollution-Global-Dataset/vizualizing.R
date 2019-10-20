1.  Latitude
2.  Longitude
3.  CD1: numeric, particle counts for debris between .335-.999 mm, units: [1/km^2]
4.  CD2: numeric, particle counts for debris between 1.00-4.75 mm, units: [1/km^2]
5.  CD3: numeric, particle counts for debris between 4.75-200 mm, units: [1/km^2]
3.  WD1: numeric, particle weight for debris between .335-.999 mm, units: [g/km^2]
4.  WD2: numeric, particle weight for debris between 1.00-4.75 mm, units: [g/km^2]
5.  WD3: numeric, particle weight for debris between 4.75-200 mm, units: [g/km^2]
install.packages("RCurl")

require(RCurl)

#get the data
data_uri = "sea_data.csv"
data = read.csv(data_uri)
head(data)
#install.packages('rworldmap')
library(rworldmap)
newmap <- getMap(resolution = "high")
plot(newmap, xlim = c(-70,200), ylim = c(30, 91), asp =4 )
points(data$Latitude, data$Longitude, col = "red", cex = 4)


#Set country boundaries as light grey
l <- list(color = toRGB("#d1d1d1"), width = 0.5)


install.packages('webglobe')

library(webglobe)              #Load the library
data(quakes)                   #Load up some data

wg <- webglobe(immediate=TRUE) #Make a webglobe (should open a net browser)
Sys.sleep(10)                     #Wait for browser to start, or it won't work
wg + wgpoints(quakes$lat, quakes$lon, size=5*quakes$mag) #Plot quakes
wg + wgcamcenter(-24, 178.0650, 8000) 


