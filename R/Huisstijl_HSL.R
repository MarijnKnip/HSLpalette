#' HSL-huisstijlkleuren
#'
#' Geeft hex-kleurencodes uit de HSL-huisstijl als benoemde vector.
#'
#' @param ... Namen van kleuren, bijv. "rood", "geel". of een door komma's
#'   gescheiden lijst. Wordt er niets opgegeven, dan is de uitvoer de naam
#'   van de functie zelf (gebruik \code{huisstijl_HSL()} zonder haakjes-argumenten
#'   samen met \code{unlist()} voor alle kleuren; zie voorbeelden).
#' @return Benoemde character-vector met hexcodes.
#' @export
#' @examples
#' huisstijl_HSL("rood", "blauw")
#' # ook zonder argumenten aanroepbaar:
#' unlist(huisstijl_HSL(NULL))


huisstijl_HSL <- function(...) { 
  
  huisstijl <- c("rood"= "#B52B2B",
                 "geel"="#FFEB73",
                 "donkergroen"="#004D46",
                 "roze"="#FFD2D1",
                 "donkerpaars"="#280F4B",
                 "wit"="#FFFFFF",
                 "paars"="#5445A3",
                 "lichtpaars"="#E2D4FF",
                 "groen"="#008573",
                 "mintgroen"="#C9F0E6",
                 "blauw"="#004AF7",
                 "grijs"="#DEDCCE")
  cols <- c(...)
  if (is.null(cols))
    return(huisstijl)
  
  huisstijl[cols]
}
