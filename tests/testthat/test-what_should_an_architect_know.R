test_that("error value is returned when thing > 250", {
  testthat::expect_error(what_should_an_architect_know(260))
  testthat::expect_error(what_should_an_architect_know(c(1, 15, 500)))

})


test_that("error value is returned when thing is not an integer", {
  testthat::expect_error(what_should_an_architect_know("cat"))
  testthat::expect_error(what_should_an_architect_know(c(1, 40, "cat")))
})


test_that("correct output is returned", {
  testthat::expect_equal(what_should_an_architect_know(1), "The feel of cool marble under bare feet.")
  testthat::expect_equal(what_should_an_architect_know(54), "How people lived in Çatal Hüyük.")

})

