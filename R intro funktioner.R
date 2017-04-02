
# R introduktion
# Funktioner

# Funktioner är enkla att skapa i R. För att skapa en funktion kan ni helt enkelt skriva "fun" och trycka enter.

name <- function(variables) {
  
}

# Alternativt så skriver/identifierar ni funktionen på den form som anges ovan.
# "name" anger namnet på funktionen, alltså den som skall kallas senare då vi ska använda funktionen.
# "variables" är de variabler som vi kan ange manuellt i funktionen.

# Låt oss göra en funktion!

medelvärde <- function(x) {
  
   sum(x)/length(x)
  
}

# I denna funktion har vi som ni märker redan använt två funktioner, "sum" och "length".
#
# I "sum" eller summa så summeras värdena i vektorn x, som alltså är variabeln.
# I "length" så anges längden av vektorn x, alltså antalet element i vektorn x, där återigen x är variabeln.
#
# Vi kan nu ange några värden på x och testa:

x <- c(1,3,5,7)

medelvärde(x)

# På samma sätt som sum() och length() är funktioner så är nu medelvärde() en funktion som vi kan kalla!
#
# Men att vi nu har skapat denna funktion var något onödigt då R redan innehåller en funktion för medelvärdet

mean(x)

# med fler argument (variabler) som kan ändras.

# Slut script

