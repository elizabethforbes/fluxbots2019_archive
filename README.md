# fluxbots2019
This repository hosts the software required to process raw carbon dioxide accumulation data, and calculate flux data. Included in this repo are several additional Jupyter notebooks, including one that:

runs the fluxbot.py analyses software that processes raw data to produce flux data for each fluxbot in a network
calculates the Allan Variance of the raw carbon dioxide data streams, to determine the best averaging window
compares the flux data collected by the fluxbots with those collected manually with a PP Systems CIRAS carbon analyzer and attached soil carbon flux chamber
raw carbon accumulation datasets for each fluxbot in the network analyzed here
output flux data for the entire network, produced by the fluxbot.py analyses software
additional data used for analyses such as the Allan Variance, comparison with CIRAS data, seal/closure testing
R Studio markdown files used to produce the final dataset (e.g. remove fluxes that do not pass the QAQC testing phase); descriptive statistics and analyses reported in the manuscript and supplement; and all plots reported in the manuscript and supplement.
Also included in this repo is a submodule titled "hardware". This submodule links to a repo created by co-author Vincent Benenati and housed at his Github (repo "FluxbotV2"). The scripts therein are those uploaded to the Pycom microcontroller, and that run the hardware of the fluxbot: the boot-up sequence, the data storage sequence, the actuator, the real-time clock (pcf8523), the humidity/pressure/temperature sensor (bme280), the CO2 sensor, the indicator light, and the various constants like pin locations and actuator opening positions. To use this submodule when cloning the fluxbots2019_archive repo, it is necessary to initialize the submodule. To clone the repository with the submodule, use:

git clone --recursive https://github.com/elizabethforbes/fluxbots2019_archive.git
If you have already cloned the project without the recursive command, you can initialize the submodule using:

git submodule init
git submodule update

## Manuscript file

The [manuscript](https://www.overleaf.com/read/mnmbvcmpgbjq) file for this work is hosted on Overleaf.

