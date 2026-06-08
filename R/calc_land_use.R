
#' Land Use Function 
#'
#' Computes a land use change coefficient from change in land cover area
#' @param forest_t1 forest area at earlier time point (ha)
#' @param forest_t2 forest area at later time point (ha)
#' @param ag_t1 agricultural area at earlier time point (ha)
#' @param ag_t2 agricultural area at later time point (ha)
#' @param urban_t1 urban area at earlier time point (ha)
#' @param urban_t2 urban area at later time point (ha)
#' @return land use change coefficient (ha lost from forest; positive = forest loss)
#'
# function definition
land_use = function(forest_t1, forest_t2, ag_t1, ag_t2, urban_t1, urban_t2) {
  
 forest_loss = forest_t1 - forest_t2     #positive value = forest declined
 ag_gain = ag_t2 - ag_t1                 #positive value = agriculture expanded
 urban_gain = urban_t2 - urban_t1        #positive value = urban expansion 
 land_use_coeff = forest_loss + ag_gain + urban_gain
 
    return(land_use_coeff)               #combined land conversion pressure
  
}













