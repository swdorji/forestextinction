
#' Wildfire Risk Function
#'
#' Estimates regional fire risk from climate, disturbance, and land use inputs
#' @param rainfall total annual rainfall (mm)
#' @param hectares_burned hectares affected by fire in prior year (ha)
#' @param avg_temp average annual temperature (degrees C)
#' @param net_pop_change net population change from human_geog() Module 1 (persons)
#' @param landuse_coeff land use change coefficient from land_use() Module 2 (ha)
#' @return regional fire risk score (unitless index, higher = greater risk)
#'
wildfire_risk = function(rainfall, hectares_burned, avg_temp,
                     net_pop_change, landuse_coeff) {
  
  risk = (hectares_burned * avg_temp * landuse_coeff) / (rainfall + 1) +
    (net_pop_change * 0.001)
  
  return(risk)
  
}























