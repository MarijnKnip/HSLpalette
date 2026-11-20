# HSLcolors
Custom palettes and functions for ggplot using Leiden University of Applied Sciences colors


Dit script bevat kleurenpaletten en een nieuwe set functies ter vervanging van standaard ggplot2 functies. 
Je kunt hiermee op een makkelijke manier Hogeschool Leiden kleuren gebruiken voor je grafieken en figuren. 
Naast het geven van nieuwe functies, worden er in dit script ook voorbeelden gegeven van figuren met de nieuwe kleurenpaletten. 

Dit script bevat vervangingen voor de volgende scale_fill en scale_color functies uit ggplot2:
  scale_fill_HSL              (scale_fill_discrete)
  scale_colour_HSL            (scale_colour_discrete)
  scale_fill_HSL_c            (scale_fill_continuous)
  scale_colour_HSL_c          (scale_colour_continuous)
  scale_fill_HSL_n            (scale_fill_continuous) +interpolated colors for plots with many categories for instance
  scale_colour_HSL_n          (scale_colour_continuous) +interpolated colors for plots with many categories for instance
  scale_fill_HSL_gradientn    (scale_fill_gradientn)
  scale_colour_HSL_gradientn  (scale_colour_gradientn)

Zowel Engelse, als Amerikaanse spelling is ondervangen (color/colour)

De paletten die je kunt aanroepen zijn de volgende:
  main        Alle kleuren die binnen de Hogeschool Leiden huisstijl vallen   (12 Kleuren)
  light       Alle pastelkleuren                                              (6 kleuren)
  dark        Alle donkere kleuren                                            (5 kleuren)
  greens      De groene tinten met Hogeschool Leiden-grijs als basistint      (4 kleuren)
  purples     De paarse tinten met Hogeschool Leiden-grijs als basistint      (4 kleuren)
  
Paletten met twee kleuren zoals in het huisstijlhandboek pagina 6:
  greyblue          grijze en blauw    
  twopurple         lichtpaars en donkerpaars
  redgrey           rood en grijs
  whitegreen        wit en groen
  tealpurple        mintgroen en paars
  greenandyellow    geel en groen
  pinkpurple        roze en paars
  hslheat1          Heatmap kleurenpalet
  hslheat2          Versimpeld Heatmap kleurenpalet


  Deze functie is gebasseerd op en geinspireerd door: 
  https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/ 
  door Meghan Hall


