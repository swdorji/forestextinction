
devtools::load_all()

test_that("deforestation_works", {

  expect_equal(deforestation(natural_forest_t1 = 5 , natural_forest_t2 = 5,
                             plantation_t1 = 5, plantation_t2 = 5,
                             fire_risk_score = 5,
                             nat_weight = 0, plan_weight = 0), 5)
  expect_equal(deforestation(natural_forest_t1 = 10000 , natural_forest_t2 = 5000,
                             plantation_t1 = 5000, plantation_t2 = 10000,
                             fire_risk_score = 5,
                             nat_weight = 0.8, plan_weight = 0.3), 2505)
})

