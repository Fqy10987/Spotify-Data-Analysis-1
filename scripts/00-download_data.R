#### Preamble ####
# Purpose: Download the artist data from spotify, and save it in "00-raw_data"
# Author: Qingyang Feng
# Date: October 10, 2024
# Contact: lingtianchenming@gmail.com
# License: MIT
# Pre-requisites: You need to install "spotifyr" through the code providing in
# the author's github, and install package devtools

#### Workspace setup ###
#install.packages("devtools")
#devtools::install_github('charlie86/spotifyr')
library(spotifyr)
library(usethis)
edit_r_environ()

#### Download data ####
ed_sheeran_data <- get_artist_audio_features("ed sheeran")

#### Save data ####
saveRDS(ed_sheeran_data, "data/00-raw_data/ed_sheeran.rds")
