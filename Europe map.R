install.packages("terra")
library(terra)

x <- rast(nrows=108, ncols=21, xmin=0, xmax=10)

# Create a SpatRaster from a file
f <- system.file("ex/elev.tif", package="terra")
r <- rast(f)

s <- rast(system.file("ex/logo.tif", package="terra"))   

# Create a skeleton with no associated cell values
rast(s)

# from a matrix 
m <- matrix(1:25, nrow=5, ncol=5)
rm <- rast(m)

# from a "xyz" data.frame
d <- as.data.frame(rm, xy=TRUE)
head(d)
rast(d, type="xyz")



map <- rast("/Users/slyu1/LVSM/Range margin/GitHub/map/whole_Europe.tif")
plot(map)


points(1000,1000, col="red")



