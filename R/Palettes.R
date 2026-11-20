#' HSL-paletten
#'
#' Geeft een benoemde set kleuren uit een van de HSL-paletten.
#'
#' @param palette Naam van het palet: "main", "light", "dark", "greens",
#'   "purples", "greyblue", "twopurple", "whitegreen", "tealpurple",
#'   "greenandyellow", "pinkpurple", "hslheat1" of "hslheat2".
#' @return Benoemde character-vector met hexcodes.
#' @export
#' @examples
#' HSLpalette("main")
HSLpalette <- function(palette = "main", ...) { ... }



#palette functie

HSLpalette <-function(palette = "main", ...) {
  
  HSLpalettes <- list(
    `main` = huisstijl_HSL("rood", 
                           "geel",
                           "donkergroen",
                           "roze",
                           "donkerpaars", 
                           "wit",
                           "paars", 
                           "lichtpaars",
                           "groen",
                           "mintgroen",
                           "blauw",
                           "grijs"),
    
    `light` = huisstijl_HSL("roze",
                            "geel", 
                            "lichtpaars",
                            "mintgroen", 
                            "grijs",
                            "wit"),
    
    `dark` = huisstijl_HSL( "donkergroen", 
                            "donkerpaars",
                            "blauw",
                            "geel"),
    
    `greens` = huisstijl_HSL("donkergroen", 
                             "groen",
                             "mintgroen",
                             "grijs"),
    
    `purples` = huisstijl_HSL("donkerpaars",
                              "paars", 
                              "lichtpaars",
                              "grijs"),
    
    `greyblue` = huisstijl_HSL("grijs",
                               "blauw"),
    
    `twopurple` = huisstijl_HSL("donkerpaars",
                                "lichtpaars"),
    
    `whitegreen` = huisstijl_HSL("wit",
                                 "groen"),
    
    `tealpurple` = huisstijl_HSL("mintgroen",
                                 "paars"),
    
    `greenandyellow` = huisstijl_HSL("groen",
                                     "geel"), 
    
    `pinkpurple` = huisstijl_HSL("donkerpaars",
                                 "roze"),
    
    `hslheat1` =  huisstijl_HSL("rood", 
                                "geel",
                                "mintgroen",
                                "donkergroen",
                                "blauw",
                                "donkerpaars"),
    
    "hslheat2" = huisstijl_HSL("rood",
                               "geel",
                               "blauw")
  )
  
  HSLpalettes[[palette]]
  
}

#' Interne generator voor discrete paletten
#'
#' @param palette Naam van het palet (zie \code{\link{HSLpalette}}).
#' @param direction 1 = originele volgorde, -1 = omgekeerd.
#' @return Functie die voor n de eerste n kleuren teruggeeft.
#' @noRd
palette_gen <- function(palette = "main", direction = 1) { ... }

##functies for scale_color and scale_fill
#discrete
palette_gen <- function(palette = "main", direction = 1) {
  function(n) {
    if (n > length(HSLpalette(palette)))
      warning("Not enough colors in this palette!")
    
    else {
      all_colors <- HSLpalette(palette)
      all_colors <- unname(unlist(all_colors))
      all_colors <- if (direction >= 0) all_colors else rev(all_colors)
      color_list <- all_colors[1:n]
      return(color_list)  # <-- Dit ontbrak!
    }
  }
}


#' Interne generator voor continue paletten
#'
#' @param palette Naam van het palet (zie \code{\link{HSLpalette}}).
#' @param direction 1 = originele volgorde, -1 = omgekeerd.
#' @param ... Doorgegeven aan \code{\link[grDevices:colorRamp]{colorRampPalette}}.
#' @return Interpolatiefunctie (\code{colorRampPalette}-object).
#' @noRd
palette_gen_c <- function(palette = "main", direction = 1, ...) { ... }

#continuous
palette_gen_c <- function(palette = "main", direction = 1, ...) {
  
  pal <- HSLpalette(palette)
  
  pal <- if (direction >= 0) pal else rev(pal)
  
  colorRampPalette(pal, ...)
  
}
