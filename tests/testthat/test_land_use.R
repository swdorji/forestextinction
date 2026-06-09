
devtools::load_all()

test_that("land_use_works", {

  expect_equal(land_use(forest_t1 = 100, forest_t2 = 80, ag_t1 = 50, ag_t2 = 70, urban_t1 = 30, urban_t2 = 40), 50)
  expect_equal(land_use(forest_t1 = 100, forest_t2 = 100, ag_t1 = 50, ag_t2 = 50, urban_t1 = 30, urban_t2 = 30), 0)
})
