# 5. Stwórz funkcję będącą najprostszą wersją kalkulatora 
# (dodawanie, odejmowanie, mnożenie albo dzielenie dwóch liczb).

kalkulator <- function(liczba1, liczba2, operacja) {
  if (operacja == "+") {
    return(liczba1 + liczba2)
  } else if (operacja == "-") {
    return(liczba1 - liczba2)
  } else if (operacja == "*") {
    return(liczba1 * liczba2)
  } else if (operacja == "/") {
    if (liczba2 == 0) {
      return("Błąd: dzielenie przez zero.")
    } else {
      return(liczba1 / liczba2)
    }
  } else {
    return("Nieznana operacja. Użyj: '+', '-', '*' lub '/'.")
  }
}