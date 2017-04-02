


# R introduktion
# Enkelare beräkningar

# Hashtaggen eller Hashtecken i början av denna text anger att vi kommenterar texten, kommer inte att köras då koden körs.

# R kan enkelt användas för enklare beräkningar, beräkna 3 + 4 nedan.
# ctrl+R kör koden ni har markerat (läs: cmd istället för ctrl för mac i fortsättningen).

3 + 4

# Vi fortsätter med 3 - 5.

3 - 5

# och multiplikation.

3 * 4

# sedan självklart division.

8 / 2

# Här nere gick det snett... division med 0 återger "Inf".

8 / 0

# Vad betyder detta? Antingen skriv ner och vänta så kommer en hjälptext eller ange frågetecken framför och kör koden.

?Inf

# Vi ser att det betyder oändligt tal, varav vi inte kan återgå något reellt tal för denna division.
# Råkar vi skriva fel så hjälper R till att försöka korrigera våra misstag.

8 / / 0

# Vi har alltså ett oväntat "/" i koden ovan och vi får därmed inget svar.
# Nu fortsätter vi med lite fler räkneoperationer.

5 + 5 / 2

# Okej, men det var inte det jag var ute efter egentligen. Ville egentligen beräkna

(5 + 5) / 2

# Så parantesuträkningen går före divisionen, alltså 10 delat på 2
# Exponenter beräknas enligt
5 ^ 2

# Ytterligare en artimetisk operator (vilken jag ej har behövt använda) är "modulo" operatorn
5 %% 3

# Detta betyder helt enkelt att vid divisionen 5 / 3 så återstår en rest 2 som inte är jämnt delbart med 3.

# Slut kod
