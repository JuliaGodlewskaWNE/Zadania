
# Wczytaj dane tekstowe 
# Wczytaj plik tekstowy z lokalnego dysku 
text <- readLines(file.choose(), encoding="UTF-8")
text

library(qdap)

frequent_terms <- freq_terms(text)
frequent_terms 
frequent_terms <- freq_terms(text, stopwords = Top200Words) 
frequent_terms
plot(frequent_terms)

# Tworzenie chmury słów za pomocą pakietu wordcloud 
install.packages("wordcloud") 
library(wordcloud)

# Opcje chmury słów 
?wordcloud

# Utwórz chmurę słów 
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)

# Optymalizacja i dostosowanie wyników 

# Zmiana wartości min.freq i max.words w celu wyświetlenia mniejszej/większej liczby słów. 
# min.freq: słowa o częstości poniżej tej wartości nie będą wyświetlane 
# max.words: maksymalna liczba słów do wyświetlenia

# Ograniczenie liczby słów w chmurze poprzez określenie minimalnej częstości 
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)

# Ograniczenie liczby słów w chmurze poprzez określenie maksymalnej liczby słów 
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)

# Dodanie koloru do chmury słów dla lepszej wizualizacji 

?brewer.pal 
brewer.pal.info

# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))

# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))

# Dodanie różnych palet kolorystycznych
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Blues"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Greens"))

#Analiza tekstów

#Tekst 2021
#Top 10 słów
#1  american
#2  jobs
#3  plan
#4  americans
#5  act
#6  families
#7  lets
#8  thats
#9  democracy
#10 president

#Tekst 2024
#Top 10 słów
#1  president
#2  american
#3  im
#4  thats
#5  future
#6  years
#7  americans
#8  pay
#9  ive
#10 tax

#Dalsza optymalizacja
#Bez słów "zapychaczy"

frequent_terms <- freq_terms(text, stopwords = c(Top200Words, "thats", "im", "ive"))
frequent_terms

#Dalsza analiza

#Tekst 2021
#Top 10 słów
#1  american
#2  jobs
#3  plan
#4  americans
#5  act
#6  families
#7  lets
#8  democracy
#9  president
#10 care

#Tekst 2024
#Top 10 słów
#1  president
#2  american
#3  future
#4  years
#5  americans
#6  pay
#7  tax
#8  dont
#9  history
#10 tonight

#Widać pewne różnice w priorytetach. 
#W pierwszym tekście większe skupienie na słowach o charakterze społecznym/socjalnym (jobs, families, care).
#W drugim na słowach o charakterze typowo politycznym.