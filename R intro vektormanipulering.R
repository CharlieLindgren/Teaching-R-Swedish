
# R introduktion
# Vektormanipulering

# Vi kan även namnge individuella element i vektorn.

x <- c(1,3,5,7)
namn_för_elementen <- c("element 1","element 2","element 3","element 4")
names(x) <- namn_för_elementen

x

# som ni ser så har nu varje element ett eget namn, det är användbart om man vill identifiera exempelvis
# personer eller objekt.
#
# Vi kan välja ut enstaka element från vektorn med hakparanteser.

x[1]
x[4]

# men vi kan även välja ut elementen med hjälp av de namn vi har skapat.

x["element 3"]

# Vi kan även välja flera element samtidigt med hjälp av vektorer inom hakparanteserna!

x[c(1,3,4)]
x[c("element 1","element 2")]

# med : tecknet så kan vi bestämma ett intervall av värden som vi vill hämta.

x[1:3]

# där alltså

1:3
c(1,2,3)

# anger samma vektor utan att de mellanliggande värdena behöver anges.


