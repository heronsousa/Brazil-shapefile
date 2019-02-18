install.packages("rgdal")
library(rgdal)
library(ggplot2)

shp <- readOGR("Map\\.", "BRUFE2500GC_SIR")

shp_df <- fortify(shp)

ggplot() +
  geom_polygon(data=shp_df, aes(x=long, y=lat, group=group), color='grey', fill='white') +
  coord_map()