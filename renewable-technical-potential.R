## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(renewablepossibilities)
library(dplyr)
library(ggplot2)

## ----setup--------------------------------------------------------------------
dplyr::glimpse(usre_df)


## -----------------------------------------------------------------------------
usre_df %>%
slice_max(rooftop_pv_gwh, n = 10) %>%
ggplot(aes(x = reorder(state, rooftop_pv_gwh),
y = rooftop_pv_gwh)) +
geom_col() +
coord_flip() +
labs(
x = "State",
y = "Rooftop PV potential (GWh)",
title = "Top 10 states by rooftop solar technical potential"
)

