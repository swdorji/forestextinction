
#' Human Geography Function
#'
#' Computes net population change from census data at two time points
#' @param pop_t1 total population at earlier census period (persons)
#' @param pop_t2 total population at later census period (persons)
#' @return net population change between census periods (persons, positive = growth)
#'
human_geog = function(pop_t1, pop_t2) {
  
  net_pop_change = (pop_t2 - pop_t1)
    
    return(net_pop_change)
  
}












