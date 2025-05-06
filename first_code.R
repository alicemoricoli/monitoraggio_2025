# Installiamo il pacchetto Terra dalla rete CRAN, per analisi spaziali

install.packages("terra")
library(terra) # package used for remote sensing data

# Carichiamo un'immagine originale del Matogrosso (scattata il 19/02/1992 dal satellite Landsat 5) 
# Windows
setwd("C://Users/User/Desktop")
mato = rast("Matogrosso_l5_1992219_lrg.jpg")
plot(mato)

# Il colore dell'immagine è dato dalla riflettanza dell'oggetto L'immagine è formata da varie bande. In infrarosso la vegetazione ha un comportamento particolare (assorbe rosso e blu per fare fotosintesi,
# quindi sono poco riflesse. IR è invece riflesso moltissimo)

# Bands:
# band 1: near infrared
# band 2: red
# band 3: green

plotRGB(mato, r=2, g=3, b=1) #ciò che vediamo blu sarà quindi vegetazione perchè la banda infrarosso vicino è montata sulla componente blu
