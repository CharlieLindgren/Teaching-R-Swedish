
# R introduktion
# Listor

# En lista i R kan samla objekt av varierande sorter.
# Likna gärna det med skillnaden mellan matrisens ensidighet med data innehåll och data frames varierande kolumner,
# då en lista kan blanda matriser, vektorer, data frames och tillochmed fler listor i varje listelement.
# På så sätt kan man lagra i princip allt man behöver i en lista.
#
# Att skapa en lista är busenkelt
 
en_matris <- matrix(rnorm(1:9), nrow = 3, ncol = 3) # rnorm ger slumpmässiga värden (statistik så går inte in på detaljer)
en_data_frame <- as.data.frame(en_matris)
en_vektor <- c(1,3,5,7)
ett_ord <- "Hej!"
ett_logiskt_utfall <- TRUE

min_lista <- list(en_matris,en_data_frame,en_vektor,ett_ord,ett_logiskt_utfall)

min_lista

# Hur kommer vi åt listelementen då?
# För den som tar en titt på koden så kan det bli rätt uppenbart, man lägger till extra hakparanteser
# för de listelement som avses. Så vi skriver helt enkelt

min_lista[[2]]
min_lista[[4]]

# Enkelt! Och vill vi jobba med dessa listelement så är det bara att använda vilken
# kod som än är tillämplig på den klass av variabel som man har hämtat.

min_lista[[2]][1:2,"V3"]
min_lista[[3]][4]

# Vill vi namnge listelementen så kan vi även göra detta!

namn_lista <- c("matris","data.frame","vektor","ord","logiskt utfall")
names(min_lista) <- namn_lista

min_lista

# och här ser vi återigen dollartecken. Det kan bara betyda en sak!

min_lista$vektor
min_lista$ord
min_lista$`logiskt utfall`

# Smidigt!
#
# Vi kunde även, för enklare namngivelse i framtiden, ha skrivit

min_lista <- list(matris = en_matris,
                  data.frame = en_data_frame,
                  vektor = en_vektor,
                  ord = ett_ord,
                  "logiskt utfall" = ett_logiskt_utfall)

# för att lägga till listnamnen.
# Notera att för alla namn utom "logiskt utfall" kunde jag undvika att skriva
# citattecken, detta beror på mellanrummet som inte accepteras för namnet "logiskt utfall"
# Här ser ni även att om koden börjar bli lång kan man bryta denna vid kommatecken och fortsätta på nästa rad.
#
# Nu har vi en lista men säg att den inte riktigt räcker till, vi vill lägga till mtcars datasetet vi använde tidigare.
# Detta är riktigt enkelt, kom ni ihåg c() funktionen som vi använder för att kombinera värden till vektorer?
# Samma funktion kan kombinera en lista med ytterligare ett listelement,
# kom då ihåg att säkerställa att det är ett listelement, men det behöver inte göras om man lägger till exempelvis en vektor.

ny_lista <- c(min_lista, list(cars = mtcars))

ny_lista

# Slutligen kan vi överblicka listan med... just det, str() och summary()

str(ny_lista)
summary(ny_lista)

# Slut script.


