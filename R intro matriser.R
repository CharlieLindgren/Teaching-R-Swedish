
# R introduktion
# Matriser

# Vi kan gå vidare från vektorer till matriser som anger element enligt rader och kolumner.
# Vi kan skapa en matris enligt nedan:

vår_matris <- matrix(1:9,
                     nrow = 3,
                     ncol = 3,
                     byrow = TRUE)

# där 1:9 anger vektorn vi vill lägga in i matrisen,
# nrow är antalet rader och ncol antalet kolumner,
# medan byrow är en logisk operator för vilken vi säger att värdena skall läggas in radvis.
# Hade vi istället skrivit

matrix(1:9, nrow = 3, ncol = 3)

# Så läggs per automatik värdena in kolumnvis.
#
# Vi kan namnge raderna och kolumnerna likt vi gjorde med vektorerna.

colnames(vår_matris) <- c("kolumn_1", "kolumn_2", "kolumn_3")
rownames(vår_matris) <- c("rad_1", "rad_2", "rad_3")

vår_matris

# Och på samma sätt som med vektorer så kan vi hämta element från matrisen
#
# [,] används där före kommatecknet så anger vi rader och efter komma tecknet så anger vi kolumner.

vår_matris[1, 2]                                         # rad 1 och kolumn 2
vår_matris[1:2, 3]                                       # rad 1 och 2 samt kolumn 3 (notera att detta blir en vektor)
vår_matris[2:3, 2:3]                                     # rad 2 och 3 samt kolumn 2 och 3

vår_matris["rad_1", "kolumn_2"]                          # rad 1 och kolumn 2
vår_matris[c("rad_1", "rad_2"), "kolumn_3"]              # rad 1 och 2 samt kolumn 3 (notera att detta blir en vektor)
vår_matris[c("rad_2", "rad_3"),c("kolumn_2","kolumn_3")] # rad 2 och 3 samt kolumn 2 och 3

# Om man vill så kan man även blanda dessa

vår_matris[2:3,c("kolumn_2","kolumn_3")]                 # rad 2 och 3 samt kolumn 2 och 3

# Om vi lämnar ett fält blankt för kolumner eller rader så väljs helt enkelt alla kolumner eller rader

vår_matris[,c("kolumn_2","kolumn_3")]
vår_matris[c("rad_2","rad_3"),]

# Några bra matrisoperationer kan vara att summera över alla rader eller kolumner

rowSums(vår_matris)
colSums(vår_matris)

# Säg att vi vill lägg till en kolumn i vår matris

ny_kolumn <- c(1,2,3)

# använder vi cbind för att lägga till kolumner

cbind(vår_matris,ny_kolumn)

# Vill vi istället lägga till en ny rad

ny_rad <- c(1,2,3)

# Så använder vi rbind

rbind(vår_matris,ny_rad)

# Operatorerna som vi redan har lärt oss, d.v.s +, -, *, /, ^ och %% kan användas på matriser
# och sker på varje element som ni ser nedan.

vår_matris + 2
vår_matris - 2
vår_matris * 2
vår_matris / 2
vår_matris ^ 2
vår_matris %% 2

# Vi kommer att gå igenom fler matrisoperationer mot slutet av kursen!
# Men det här scriptet räcker som en introduktion till hur matriser kan skapas och manipuleras.

# Script slut

