library(rgdal)
library(ggplot2)

shp <- readOGR(dsn='Map/')

shp_df <- fortify(shp)

ggplot() +
  geom_polygon(data=shp_df, aes(x=long, y=lat, group=group), color='grey', fill='white') +
  coord_map()
