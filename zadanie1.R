
# 1. Stwórz funkcję o nazwie kostka, która będzie symulować n rzutów kostką.
# Wskazówka: Użyj funkcji sample() do losowania liczby oczek od 1 do 6.

kostka <- function(n) {
  if (n <= 0) {
    return("Liczba rzutów musi być większa od 0.")
  }
  
  rzuty <- sample(1:6, n, replace = TRUE)
  return(rzuty)
}