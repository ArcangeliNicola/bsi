bsi <- function(x, red, blue, nir, swir){
  
  if(!inherits(x, "SpatRaster")) {
    stop("Input image should be a SpatRaster object.")
  }
  
  if(!inherits(nir, "numeric") | !inherits(red, "numeric") | !inherits(blue, "numeric") | !inherits(swir, "numeric"))  {
    stop("red, blue, NIR and SWIR layers should be indicated with a number")
  }
  
  bsi = (x[[swir]] + x[[red]] + x[[nir]] + x[[blue]]) / ((x[[swir]] + x[[red]]) - (x[[nir]] + x[[blue]]))
 
  return(bsi)
  
}
