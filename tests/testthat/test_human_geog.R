
devtools::load_all()

test_that("human_geog_works", {

  expect_equal(human_geog(pop_t1 = 50000, pop_t2 = 60000), 10000)
  expect_equal(human_geog(pop_t1 = 60000, pop_t2 = 60000), 0)
})
