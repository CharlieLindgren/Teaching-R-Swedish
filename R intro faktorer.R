
# R introduktion
# Faktorer

# Det är viktigt att i R kunna känna till faktorer, för att underlätta för er så kommer jag ta ett vanligt exempel.
#
# Ta tillexempel faktorn kön, alltså man eller kvinna.
# En sådan faktor kan endast anges två "värden", man eller kvinna, och inte en kontinuerlig mängd av värden.

kön <- c("Kvinna","Man","Kvinna","Kvinna","Man")
kön_faktor <- factor(kön)

kön_faktor

# Nu kan man se att vektorn även har nivåer, "Levels", bestående av Kvinna och Man.
#
# Faktorer kallas även kategoriska variabler eftersom de har kategorier.
# Dessa kan även klassificeras i två ytterligare nivåer, nominal skala och ordinal skala.
# Nominal skala har ingen nivå, likt exemplet ovan så är inte Män högre ställda än kvinnor.
# Ordinal skala har nivåer, ett enkelt exempel vore "small", "medium", "large" och "XL" för kläder
# där det finns en naturlig ordning från minst till störst (Ett lätt sätt att komma ihåg ordinal är att tänka "ordning").
#
# Vi skapar ordinalskalan för kläder som jag nyss nämnde (utesluter "_faktor" i namnet eftersom det nu är underförstått)

klädstorlek <- factor(c("medium","small","large","small","small","XL"), order=TRUE, levels = c("small","medium","large","XL"))

klädstorlek

# Så nu kan vi se att utöver angivna faktorer så har de en naturlig ordning!

# Nu ska vi introducera en av de mest användbara funktionerna i R: summary.

summary(klädstorlek)

# Summary ger en snabb överblick över de flesta objekt i R; Matriser, vektorer, datamängder m.m.
# När koden ovan kördes så får vi en snabb summering av antalet element i varje faktorvärde.
# Vi kommer använda summary fler gånger för att överblicka data innan vi hanterar dessa.
#
# Faktorer såsom kön ovan kan inte bli manipulerade av alla logiska operatorer. Se nedan för felmeddelande.

kön_faktor[1] > kön_faktor[2]

# Det finns således ingen rangordning mellan män och kvinnor så att den ena kan antas vara större eller mindre än den andra.
# Däremot för klädstorlek...

klädstorlek[1] > klädstorlek[2]

# Så är medium större än small.

# Slut script.

