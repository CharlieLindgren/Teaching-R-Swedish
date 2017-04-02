
# R introduktion
# Text och andra variabler

# Utöver enkla reella tal finns det andra datatyper som är användbara i R vilka jag skall gå igenom nu.

# Först ut är text typen

x <- "Hej"

# med citattecken så anger man en text variabel. Man kan manipulera text med dessa variabler.
# Exempelvis kan vi skriva

paste("Hej",", jag heter Charlie", sep="")

# där vi alltså har "klistrat ihop" två texter. notera att vi använder  sep = ""  annars kommer det att se ut som nedan

paste("Hej",", jag heter Charlie")

# Och på samma sätt som förut kan vi använda variabler

x <- "Hej"
y <- ", jag heter Charlie"

z <- paste(x,y,sep="")

# Notera hur variablerna finns tillgängliga i fönstret nedan.
# Utöver text kan heltal (integer) definieras

x <- as.integer(5)

# Försöker vi ange 5.7 som heltal får vi

x <- as.integer(5.7)

# Alltså istället närmaste heltal avrundat nedåt.
# Heltal kan vara användbara då vi vill spara minne.
#
# Vet vi inte om en variabel är heltal eller reellt tal så kan man använda funktionen "class"

class(x)

# Så får man reda på vilken klass variabeln har.
# Dessutom så kan man inte lägga ihop olika klasser av variabler:

1 + "hej"

# En annan data typ som kan anges är logiska värden
x <- TRUE
y <- FALSE

x
y

# Slut script




