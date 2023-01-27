# Assignment_3_2
remind_me() and cheat() functions
remind_me <- function(){ #take no arguments
  poffertjes_items <- c("yeast", "whole milk", "flour", "salt", "eggs", "butter", "powdered sugar")
  poffertjes_bake_off <- data.frame(poffertjes_items)
  print(poffertjes_bake_off)
  fondue_items <- c("kaas", "nootmuskaat", "brood", "groenten", "witte wijn")
  fondue_night <- data.frame(fondue_items)
  print(fondue_night)
}
remind_me()
