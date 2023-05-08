library(shinytest2)

test_that("{shinytest2} recording: simple_test", {
  app <- AppDriver$new(name = "simple_test", height = 754, width = 1235)
  app$set_inputs(name = "Andy")
  app$click("greet")
  app$expect_values()
})

