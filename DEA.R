# Librerias

library(Benchmarking)
library(readxl)

# Cargando base de datos
dir <- file.choose()
Datos <- read_excel(dir, col_names = T)

######### Caso Urbano 

#Creando los objetos

X_urb <- data.frame(Datos[1:5, 3])
Y_urb <- data.frame(Datos[1:5, 2])

#Calculando puntos de eficiencia
puntos_urb <- dea(X_urb, Y_urb, RTS = "crs", ORIENTATION = "in")

dea.plot(X_urb, Y_urb, RTS = "crs", ORIENTATION = "in-out", col="black", cex=1, lwd=2, txt = T)

######### Caso Semirural
#Creando los objetos
X_semir <- data.frame(Datos[6:11, 3])
Y_semir <- data.frame(Datos[6:11, 2])

#Calculando puntos de eficiencia
puntos_semir <- dea(X_semir, Y_semir, RTS = "crs", ORIENTATION = "in")

dea.plot(X, Y, RTS = "crs", ORIENTATION = "in-out", col="black", cex=1.2, lwd=3)

######### Caso Rural
#Creando los objetos

X_rur <- data.frame(Datos[7:24, 3])
Y_rur <- data.frame(Datos[7:24, 2])

#Calculando puntos de eficiencia
puntos <- dea(X_rur, Y_rur, RTS = "crs", ORIENTATION = "in")

dea.plot(X_rur, Y_rur, RTS = "crs", ORIENTATION = "in-out", col="black", cex=1.2, lwd=3)






