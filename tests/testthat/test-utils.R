test_that("convert_case works", {
  expect_equal(
    convert_case("hello world", style = "kebab"),
    "hello-world"
  )

  expect_equal(
    convert_case("Hello World", style = "snake"),
    "hello_world"
  )

  expect_equal(
    convert_case("hello world", style = "camel"),
    "helloWorld"
  )

  expect_equal(
    convert_case("hello world", style = "caps"),
    "HELLO WORLD"
  )

  expect_equal(
    convert_case("hello world", style = "custom", delimiter = "|"),
    "hello|world"
  )

  expect_error(
    convert_case("hello world", style = "custom"),
    "Invalid style or missing delimiter for custom style."
  )
  expect_equal(
    convert_case(c("hello world", "test case"), style = "kebab"),
    c("hello-world", "test-case")
  )
})
