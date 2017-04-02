
# R introduktion
# Variabler och variabelmanipulering

# I förgående script så kunde vi utföra enklare uträkningar, men det blir omständigt att skriva hela sin uträkning
# på en och samma rad. Då är det hjälpsamt att spara variabler för att kunna använda när man vill.

# R kan göra detta för er och ni kan själva namnge era variabler. I R använder vi inte = likhetstecken (men vi kan!)
# utan istället en pil enligt nedan
# 
#     <-
#
# till vänster om pilen anges vår namngivning av variabeln och till höger vårt objekt eller värde som vi vill ska sparas.
# Exempelvis:

x <- 5

# Nedan i "environment" så har nu värdet 5 sparats i variabeln x.
# Vill vi återge denna variabel så anger vi helt enkelt x och kör!

x

# Alltså representerar x nu vår variabel och kan användas fritt istället för att skriva 5.
# Tänk er en situation där ni vill göra många uträkningar, då är det jobbigt att fylla i en ny siffra och för varje ekvation.
# Används istället variabeln ni anger så blir det mycket enklare:

x + 3
x - 2
2 * x
x / 3
x ^ 2
x %% 3

# Vi byter värdet för x från 5 till 6 istället. Det gamla värdet skrivs över.

x <- 6

# Istället för att köra koden rad för rad ovan så kan vi markera allt vi vill köra.
# Vi kan även lägga till fler variabler.

y <- 3

# och använda dessa i uträkningarna

x + y
x - y
y * x
x / y
x ^ y
x %% y

# Samt även kombinera variabler till nya variabler

z <- y + x + 10

z

# Slut script
