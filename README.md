# Programmering 3 - "Live"-exempel

Detta Git-repositorium innehåller exempel från terminalen och filer för varje lektion. Det är en samlad plats för flera versioner av kursen.

# Lektionsdag

Under din klassmapp finns en katalog för varje lektionsdag. Denna katalog innehåller två viktiga delar:

- Terminalinspelningar: En underkatalog `recordings` med inspelningar av allt som skrivs i terminalen under lektionsdagen.

- Resten: De skript/program som vi skapar och kör samt eventuella datafiler kopplade till dem läggs oftast direkt i katalogen.

Se nedan för hur du kan spela upp inspelningarna.

# Att följa med "Live"

Varje lektionsdag får en egen Git-gren där commits automatiskt läggs till och pushas under dagen. För att följa med "live", checka ut den aktuella grenen genom att köra skriptet `./bin/daystart` på morgonen.

Efter det kan du antingen köra `git pull` i terminalen eller använda din utvecklingsmiljö för att hämta de senaste ändringarna från utbildaren. Kom ihåg att upprepa detta varje gång du vill få de senaste ändringarna.

Vid dagens slut slås förändringarna ihop till en commit som går över till `main`-grenen.

# Att spela upp den inspelade terminalen

## Vad är `script` och `scriptreplay`?

`script` är ett kommando som används för att spela in terminalsessioner. Det skapar en textfil som innehåller allt som skrivs i terminalen.

`scriptreplay` används för att återspela dessa inspelningar, och det kan använda en separat tidsfil för att spela upp allt exakt i den takt som det skrevs in.

### Filinnehåll

För varje inspelning finns två filer:

- `<tid>.txt`: Denna fil innehåller den faktiska utdata från terminalen under inspelningen.

- `<tid>_timing.txt`: Denna fil innehåller tidsinformation som gör det möjligt att återskapa sessionen med exakt tidslinje.

## Olika sätt att spela upp en inspelning

Dessa underrubriker förklarar olika sätt att spela upp en inspelning.

Då kommandoraden blir så lång så används två variabler för att ange filen med de inspelade tecknen samt filen med timningen.

```bash
inspelning="<klasskatalog>/<lektionskatalog>/recordings/<tid>.txt"
timing="<klasskatalog>/<lektionskatalog>/recordings/<tid>_timing.txt"
```

### Se omodifierat slutresultat

Om du vill visa skriptets utdata utan att använda tidsfilen kan du enkelt visa innehållet direkt med kommandot `cat`. ANSI-koder för färgändring och markörpositionering kommer fortfarande att inkluderas.

```bash
cat "$inspelning"
```

### Se rengjort slutresultat

För att få en ren utmatning utan ANSI-koder kan du använda `ansifilter` (installera det).

```bash
ansifilter "$inspelning"
```

### Spela upp med tidsanvändning i realtid

För att spela upp en inspelning med tidsanvändning, använd kommandot `scriptreplay`, som tar både utdatafilen och tidsfilen som argument.

```bash
scriptreplay "$timing" "$inspelning"
```

### Spela upp med tidsanvändning i 150% hastighet

För att spela upp inspelningen i 150% hastighet kan du justera tiden med en skalningsfaktor. Använd kommandot `scriptreplay` och ange en multiplikator (i detta fall `1.5` för att spela upp i 150% hastighet).

```bash
scriptreplay -d 1.5 --timing "$timing" "$inspelning"
```

### Spela upp utan lång väntetid mellan teckenuppdateringarna

Du kan till exempel välja att aldrig behöva vänta mer än 2 sekunder genom att sätta en maxtidsgräns. Använd kommandot `scriptreplay` och ange en maxgräns på 2 sekunder.

```bash
scriptreplay -m 2 --timing "$timing" "$inspelning"
```
