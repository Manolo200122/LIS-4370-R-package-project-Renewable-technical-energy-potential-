library(readxl)
library(dplyr)

usre_df <- read_excel(
  "C:/Users/Alejandro/OneDrive/Documents/final project 4370/usretechnicalpotential.xlsx",
  sheet = "Data",
  skip  = 1
)

usre_df <- usre_df %>%
  rename(
    state                       = State,
    urban_utility_pv_gwh        = `Urban Utility-scale PV (GWh)`,
    urban_utility_pv_gw         = `Urban Utility-scale PV (GW)`,
    urban_utility_pv_km2        = `Urban Utility-scale PV (km2)`,
    rural_utility_pv_gwh        = `Rural Utility-scale PV (GWh)`,
    rural_utility_pv_gw         = `Rural Utility-scale PV (GW)`,
    rural_utility_pv_km2        = `Rural Utility-scale PV (km2)`,
    rooftop_pv_gwh              = `Rooftop PV (GWh)`,
    rooftop_pv_gw               = `Rooftop PV (GW)`,
    csp_gwh                     = `CSP (GWh)`,
    csp_gw                      = `CSP (GW)`,
    csp_km2                     = `CSP (km2)`,
    onshore_wind_gwh            = `Onshore Wind (GWh)`,
    onshore_wind_gw             = `Onshore Wind (GW)`,
    onshore_wind_km2            = `Onshore Wind (km2)`,
    offshore_wind_gwh           = `Offshore Wind (GWh)`,
    offshore_wind_gw            = `Offshore Wind (GW)`,
    offshore_wind_km2           = `Offshore Wind (km2)`,
    biopower_solid_gwh          = `Biopower-Solid (GWh)`,
    biopower_solid_gw           = `Biopower-Solid (GW)`,
    biopower_solid_bdt          = `Biopower-Solid (BDT)`,
    biopower_gaseous_gwh        = `Biopower-Gaseous (GWh)`,
    biopower_gaseous_gw         = `Biopower-Gaseous (GW)`,
    biopower_gaseous_tonnes_ch4 = `Biopower-Gaseous (Tonnes-CH4)`,
    geothermal_hydrothermal_gwh = `Geothermal Hydrothermal (GWh)`,
    geothermal_hydrothermal_gw  = `Geothermal Hydrothermal (GW)`,
    egs_geothermal_gwh          = `EGS Geothermal (GWh)`,
    egs_geothermal_gw           = `EGS Geothermal (GW)`,
    hydropower_gwh              = `Hydropower (GWh)`,
    hydropower_gw               = `Hydropower (GW)`,
    hydropower_site_count       = `Hydropower (Count of Sites)`
  )
names(usre_df)[1:5]

library(usethis)
usethis::use_data(usre_df, overwrite = TRUE)

library(devtools)
devtools::document()

devtools::check()

library(usethis)

use_vignette("renewable-technical-potential")

library(devtools)
devtools::build_vignettes()
devtools::check()

library(devtools)
devtools::install(".")

devtools::build_vignettes()

class(usre_df$rooftop_pv_gwh)

library(readxl)
library(dplyr)

usre_df <- read_excel(
  "C:/Users/Alejandro/OneDrive/Documents/final project 4370/usretechnicalpotential.xlsx",
  sheet = "Data",
  skip  = 1
) |>
  rename(
    state                = State,
    rooftop_pv_gwh       = `Rooftop PV (GWh)`,
    rooftop_pv_gw        = `Rooftop PV (GW)`,
    # ...keep your other renames here...
  ) |>
  mutate(
    rooftop_pv_gwh = as.numeric(rooftop_pv_gwh)
  )

class(usre_df$rooftop_pv_gwh)

library(devtools)
devtools::document()

devtools::install(".")


library(renewablepossibilities)
ls("package:renewablepossibilities")

library(devtools)
devtools::document()
devtools::install(".")

rm(usre_df)

library(renewablepossibilities)
ls("package:renewablepossibilities")



