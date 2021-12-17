# fluxbots2019_archive

This repository hosts the software required to process raw carbon dioxide accumulation data, and calculate flux data.  Included in this repo are several additional Jupyter notebooks, including one that:

-  runs the fluxbot.py analyses software that processes raw data to produce flux data for each fluxbot in a network
-  calculates the Allan Variance of the raw carbon dioxide data streams, to determine the best averaging window
-  compares the flux data collected by the fluxbots with those collected manually with a PP Systems CIRAS carbon analyzer and attached soil carbon flux chamber
-  raw carbon accumulation datasets for each fluxbot in the network analyzed here
-  output flux data for the entire network, produced by the fluxbot.py analyses software
-  additional data used for analyses such as the Allan Variance, comparison with CIRAS data, seal/closure testing
-  R Studio markdown files used to produce the final dataset (e.g. remove fluxes that do not pass the QAQC testing phase); descriptive statistics and analyses reported in the manuscript and supplement; and all plots reported in the manuscript and supplement.