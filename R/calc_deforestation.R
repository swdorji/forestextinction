
#' Deforestation Function
#'
#' Estimates deforestation as net change in forest area, distinguishing
#' natural forest from timber plantation
#' @param natural_forest_t1 natural forest area at earlier time point (ha)
#' @param natural_forest_t2 natural forest area at later time point (ha)
#' @param plantation_t1 timber plantation area at earlier time point (ha)
#' @param plantation_t2 timber plantation area at later time point (ha)
#' @param fire_risk_score regional fire risk score from wildfire_risk() Module 3 (unitless)
#' @param nat_weight ecological weight for natural forest loss (0-1), default 0.8
#' @param plan_weight ecological weight for plantation loss (0-1), default 0.3
#' @return deforestation factor (ha weighted by forest type; higher = greater loss)
#'
deforestation = function(natural_forest_t1, natural_forest_t2,
                         plantation_t1, plantation_t2,
                         fire_risk_score,
                         nat_weight = 0.8, plan_weight = 0.3) {

  nat_loss  = (natural_forest_t1 - natural_forest_t2) * nat_weight
  plan_loss = (plantation_t1 - plantation_t2) * plan_weight
  defor_factor = nat_loss + plan_loss + fire_risk_score

  return(defor_factor)

}



































