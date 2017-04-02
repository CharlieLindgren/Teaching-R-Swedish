

# R introduktion
# skapa och hantera data frames

# I tidigare exempel använde vi mtcars, men vi vill ju gärna kunna använda våra egna data.
# Vi kör lite hitte-på data och ser vad som händer!

kommun          <-
  c("Trelleborg",
    "Borlänge",
    "Stockholm",
    "Umeå",
    "Haparanda",
    "Kiruna")
läge            <-
  c("mest söder", "söder", "mer söder", "norr", "mer norr", "mest norr")
invånare        <- c(43359, 41734, 789024, 111503, 4856, 18148)
IKEA            <- c(FALSE, TRUE, TRUE, TRUE, TRUE, FALSE)
Brännbollsyran  <- c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE)

# Allt väl än så länge, men det här är ju endast vektorer, vi ville ju ha en data frame.
# För detta ändamål använder vi data.frame() funktionen.

data.frame(kommun, läge, invånare, IKEA, Brännbollsyran)

# Kanon! Vi skapar ett objekt av denna data frame

kommundata <- data.frame(kommun, läge, invånare, IKEA, Brännbollsyran)

# Vi undersöker våran data frame

summary(kommundata)
str(kommundata)

# Är variablerna godtagbara?
#
# Ja egentligen men en ytterligare förbättring kan göras,
# vi kan annordna så att variabeln läge hamnar på ordinalskala istället för nominalskala.

kommundata$läge <-
  factor(
    kommundata$läge,
    order = TRUE,
    levels = c("mest söder", "mer söder", "söder", "norr", "mer norr", "mest norr")
  )

# Och vi kontrollerar att detta är okej

kommundata$läge

# Att välja element ur data frame är identiskt mot hur det går till med matriser, vi kan dock använda $ tecknet

kommundata[1, 2]
kommundata[1:3, 3]
kommundata$IKEA[3]
kommundata[1:3, "Brännbollsyran"]

# och så vidare, ni kan pröva själva att välja element från data framen.
#
# Vi kan även ta urval ur data frame med subset() funktionen

subset(kommundata, invånare > 100000)

# Vilket kan göra koden mindre komplicerad och lättförståelig för någon som skall läsa din kod.
#
# Vi kan också sortera vektorer

order(kommundata$invånare)

# vilket ger den nya ordningen med lägsta värdet till största.
# Vill vi hämta värdena skriver vi

kommundata$invånare[order(kommundata$invånare)]

# vill vi att detta ska göras för hela data framen så skriver vi

kommundata[order(kommundata$invånare), ]

# och om vi skulle vilja göra detta även för läge

kommundata[order(kommundata$läge), ]
