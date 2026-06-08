
#' Habitat Fragmentation Function 
#'
#' Estimates landscape fragmentation from deforestation and remaining forest area.
#' Connectivity is derived internally from remaining natural forest rather than
#' supplied as an external input, since it is not an output of any upstream module.
#' @param natural_forest_t2 remaining natural forest area at later time point (ha)
#' @param total_landscape_area total area of the region being assessed (ha)
#' @param defor_factor deforestation factor from deforestation() Module 4 (unitless)
#' @return fragmentation score (unitless; higher = more fragmented landscape)
#'
habitat_frag = function(natural_forest_t2, total_landscape_area, defor_factor) {
  
  # derive connectivity proxy from proportion of landscape still forested
  connectivity = natural_forest_t2 / total_landscape_area  # ranges 0-1
  fragmentation = defor_factor / (connectivity + 0.001)        # avoid division by zero
  
  return(fragmentation)
  
}











































