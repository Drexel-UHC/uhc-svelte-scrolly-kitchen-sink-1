{ # Setup -------------------------------------------------------------------
  library(tidyverse)
  library(geojsonio)  
}

{ # EDA of origin -----------------------------------------------------------

  ## import
  df_district = read_csv("../public/data/data_district.csv")
  df_region = read_csv("../public/data/data_region.csv")
  sfa = geojsonio::topojson_read("../public/data/geo_lad2021.json")
  sfa %>% geojsonio::topojson_write(file = "../public/data/geo_lad2021_uhc.json")
  
  ## region (12)
  df_region %>% glimpse()
  df_region %>% count(code, name)
  
  ## district (374)
  df_district %>% glimpse()
  df_district %>% count(code, name)

  }