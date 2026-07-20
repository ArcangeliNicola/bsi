#' Calculate the Bare Soil Index (BSI)
#'
#' Computes the Bare Soil Index (BSI) from a `SpatRaster` object.
#'
#' @param x A `SpatRaster` containing the spectral bands.
#' @param red Numeric. Index of the red band.
#' @param blue Numeric. Index of the blue band.
#' @param nir Numeric. Index of the near-infrared (NIR) band.
#' @param swir Numeric. Index of the short-wave infrared (SWIR) band.
#'
#' @details
#' The Bare Soil Index is calculated as:
#'
#' \deqn{
#' BSI = \frac{(SWIR + Red) - (NIR + Blue)}
#'            {(SWIR + Red) + (NIR + Blue)}
#' }
#'
#' @return A `SpatRaster` containing the Bare Soil Index.
#'
#' @references
#' Rikimaru, A., Roy, P. S., & Miyatake, S. (2002).
#' Tropical forest cover density mapping.
#'
#' @examples
#' library(terra)
#' r <- rast(system.file("ex/logo.tif", package = "terra"))
#' # Example only: band order depends on the dataset
#' bsi(r, red = 1, blue = 3, nir = 2, swir = 4)
#'
#' @export
