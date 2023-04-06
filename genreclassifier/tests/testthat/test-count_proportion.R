# function input for tests
three_value_113 <- data.frame(first_column = c("class1", "class2", "class3", "class3", "class3"), second_column = c(1,1,1,1,1))
one_value_2 <- data.frame(first_column = c("class1", "class1"))
empty_df  <- data.frame()

# expected function output
three_value_113_out <- data.frame(first_column = c("class1", "class2", "class3"), class_n = c(1,1,3), class_prop = c(20,20,60))
one_value_2_out <- data.frame(first_column = c("class1"), one_n = 2, one_prop = 100)

# tests
test_that("`count_proportion` should return a data frame that counts unique values in a column, and then gives the count and percentage in the next two columns`", {
  expect_equivalent(count_proportion(three_value_113, 'first_column', 'class'), three_value_113_out)
  expect_equivalent(count_proportion(one_value_2, 'first_column', 'one'), one_value_2_out)
})

test_that("`count_proportion` should throw an error when incorrect datatypes are passed into its parameters", {
  expect_error(count_proportion(three_value_113, first_column, 'class'))
  expect_error(count_proportion(three_value_113, 'first_column', class))
})

test_that("`count_classes` should throw an error when the dataframe provided is empty", {
  expect_error(count_proportion(empty_df, 'string', 'string'))
})

