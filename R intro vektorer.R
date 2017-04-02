
# R introduktion
# Vektorer

# Hitills har vi bara tittat på enskilda värden angivna på varje variabler,
# men framöver kommer det blir viktigare att ange en mängd värden till en variabel.
# 
# I R kan vi ange en kombination av värden till en variabel i form av vektorer.
# Ni kan komma ihåg "C()" funktionen då vi ska kombinera, engelska "combine".

mina_variabler <- c(1,3,5,7)

# Som ses ovan så har jag döpt vektorn, eller de kombinerade värdena, till "mina_variabler".
# Det finns en del knep för att välja rätt namn på sina variabler, för långa namn blir krångliga medan
# för korta variabelnamn kan bli svåra att tyda eller sammanfalla med funktionsnamn som redan finns i R.
#
# Det går även bra att kombinera text värden till vektorer samt övriga data typer.

mina_text_variabler <- c("hej","hallå","hejsan","tja")

mina_logiska_variabler <- c(TRUE,FALSE,FALSE,TRUE)

# Med vektorer kan vi även göra beräkningar enligt nedan

c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)

# Vilka samtliga ger samma resultat. Som man ser ovan så summeras vektorerna elementvis.
# 
# Fler sätt att räkna på vektorer:

# Multiplikation sker elementvis
c(1,2,3)*2

# Division sker också elementvis
c(1,2,3)/2

# Även potenser och modulo sker elementvis
c(1,2,3)^2
c(1,2,3)%%2

# Slut script

