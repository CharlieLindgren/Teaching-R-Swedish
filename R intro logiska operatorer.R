

# R introduktion
# Logiska operatorer

# I R är det användbart att använda logiska jämförelser för att kunna välja element eller ge betingelser för funktioner.
#
# De logiska operatorerna i R är

# <
# >  Mindre och större än (beroende på riktning)
#
# <=
# >= Mindre eller större och lika med (beroende på riktning)
#
# == Lika med varandra (notera, två stycken!)
#
# != Inte lika med varandra

# Exempelvis så är det naturligt att

3 > 2

# Varvid får det logiska utfallet TRUE då 3 är större än 2
#
# Vi anger en vektor x igen

x <- c(1, 3, 5, 7)
names(x) <- c("element 1", "element 2", "element 3", "element 4")

# och nu kan vi använda logiska operatorer för att få ut lite element från vektorn x

x < 3
x > 3
x <= 3
x >= 3
x == 3
x != 3

# Som ni ser ovan så blir utfallet av dessa logiska operatorer på vektorn en ny vektor med sant och falskt angivet.
# Man kan i sin tur använda dessa för att hämta element från vektorn x där dessa vektorer anger TRUE eller sant.

x[x < 3]
x[x > 3]
x[x <= 3]
x[x >= 3]
x[x == 3]
x[x != 3]

# Alltså kan 
