# Installiamo il pacchetto Terra dalla rete CRAN, per analisi spaziali

install.packages("terra")
library(terra) # package used for remote sensing data

# Carichiamo un'immagine originale del Matogrosso (scattata il 19/02/1992 dal satellite Landsat 5) 
# Windows
setwd("C://Users/User/Desktop")
mato = rast("Matogrosso_l5_1992219_lrg.jpg")
plot(mato)
