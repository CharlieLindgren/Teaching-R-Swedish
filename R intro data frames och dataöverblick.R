
# R introduktion
# data frames och dataöverblick

# Vi tittade kort på en matris, problemet med att använda endast matriser för att representera data är att
# matriser endast tillåter samma typ av data i dess element, alltså ingen blandning av exempelvis
# text, faktorer, numeriska värden etc etc.
# Det skapar problem då man ofta vill titta på olika saker samtidigt utan att behöva dela upp detta i flera matriser.
#
# i data frames så kan vi ange olika datatyper i kolumnerna till skillnad från en matris.
# 
# R har som ni har märkt förinställda funktioner såsom mean() och length() m.m.
# Utöver detta så kan man få tillgång till data som redan ligger förberett i R som exempeldata.
# Ett av dessa är "mtcars" vilken brukar användas för introduktion till R samt test av olika modeller för att jämföra resultat.

# Lite bakgrund till datasetet fås genom

?mtcars

# och vi kan summera med summary() funktionen

summary(mtcars)

# eller helt enkelt printa ut datat

mtcars

# Ibland kan datamängden vara för stor att överblicka eller enorm inom det som nuförtiden populärt kallas "Big Data",
# då kan det vara bra att få en inblick i datat genom att bara titta på de första raderna.
# vi använder funktionen head() som i dess enklaste form ger de första 6 raderna.

head(mtcars)

# vill vi visa fler rader kan vi ange detta med

head(mtcars, 10)

# där vi nu har valt att titta på de 10 första raderna. Head() är liksom summary() smidig för ändamålet att överblicka data.
# Vi kan även överblicka data med str() funktionen som återger datastrukturen.

str(mtcars)

# Där ser vi antalet observationer, antalet variabler, vilka kolumner som ingår tillsammans med datatyp och första värden.
# Ni undrar kanske varför det just är dollartecken framför varje kolumn?
# Svaret på detta är att man kan hämta en kolumn från sin data frame såsom nedan.

mtcars$mpg

# Alltså väldigt enkelt, ingen komplicerad kod utan helt enkelt dollartecken och den kolumn man vill ha.
# Säg att vi vill ha de element 5 till 10 i cyl kolumnen, då skriver vi helt enkelt

mtcars$cyl[5:10]

# och vill vi ha alla värden i den kolumnen som är lika med eller större än 6 skriver vi

mtcars$cyl[mtcars$cyl >= 6]

# Slut script.



