---
title: "Developing Data Products Week 2 Assignment"
author: "Nathan W"
date: "December 13, 2018"
output: 
  html_document: 
    keep_md: yes
---
#Create a web page using R Markdown that features a map created with Leaflet.

##Goal: Create a map that shows the Smithsonian's National Zoo in Washington D.C.


### Load leaflet

```r
library(leaflet)
```

### Create Map

```r
my_map<- leaflet() %>% addTiles()
```

### Location of National Zoo and link to website

```r
SmithNatlZoo<- c("<a href = 'https://nationalzoo.si.edu/'>Smithsonian National Zoo</a>")
my_map<- my_map %>%
        addMarkers(lat = 38.928782, lng = -77.048692, popup = SmithNatlZoo)
my_map
```

<!--html_preserve--><div id="htmlwidget-3da3b749c6126a314e74" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-3da3b749c6126a314e74">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[38.928782,-77.048692,null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},"<a href = 'https://nationalzoo.si.edu/'>Smithsonian National Zoo<\/a>",null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[38.928782,38.928782],"lng":[-77.048692,-77.048692]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

### Results in a map with an interactive map.
