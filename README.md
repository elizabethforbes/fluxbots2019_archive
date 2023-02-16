# fluxbots2019
repo for Cal/Val df, bot df's, and code for processing data from 2019 fluxbot deployment

Folder 1:
- dataframe containing cal/val data e.g. those flux values collected manually with PP Systems CIRAS SRC-3 that can be compared in time against those raw CO2 curves collected by the fluxbots
- dataframe containing all the raw data for all the fluxbots, over the course of the entire deployment in the field

Folder 2:
- code to compare CIRAS flux values against comparable (in time) calcluated fluxbot fluxes; calculate correction factor to be applied to fluxbot data if fluxes differ in predictable fashion between the two methods
- code to calculate hourly fluxes from each fluxbot's raw data stream, and (if necessary) apply correction factor determined from cal/val
- code to explore differences in fluxes across: herbivore treatments, landscape feature, through time (e.g. 24hr cycle, seasonality), and in response to rainfall events

## Manuscript file

The [manuscript](https://www.overleaf.com/read/mnmbvcmpgbjq) file for this work is hosted on Overleaf.

