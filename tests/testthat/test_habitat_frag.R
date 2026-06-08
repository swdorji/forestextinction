
devtools::load_all()


test_that("habitat_frag_works", {

  expect_equal(habitat_frag(natural_forest_t2 = 0, total_landscape_area = 1, defor_factor = 0), 0)
  expect_equal(habitat_frag(natural_forest_t2 = 10000, total_landscape_area = 10000, defor_factor = 1), 0.999001)
})
