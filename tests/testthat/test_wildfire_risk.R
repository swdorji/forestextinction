
devtools::load_all()

test_that("wildfire_risk_works", {

  expect_equal(wildfire_risk(rainfall = 1000, hectares_burned = 0, avg_temp = 30, net_pop_change = 0, landuse_coeff = 50), 0)
  high_rain = wildfire_risk(rainfall = 2000, hectares_burned = 500, avg_temp = 30, net_pop_change = 1000, landuse_coeff = 50)
  low_rain = wildfire_risk(rainfall = 500, hectares_burned = 500, avg_temp = 30, net_pop_change = 1000, landuse_coeff = 50)
  expect_true(high_rain < low_rain)
})
