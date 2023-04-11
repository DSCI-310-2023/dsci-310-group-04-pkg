# df input for tests
data <- as.data.frame(data("iris"))
empty_df <- tibble::tibble()

# tests
test_that("`create_faceted_hist_plot` should return a ggplot that contains degree of the feature on the x axis",
          {
            plot <- create_faceted_hist_plot(data, 'Petal.Length', 'Species')
            expect_equal(plot$labels$x, "Petal.Length")
          })

test_that("`create_faceted_hist_plot` should throw an error when incorrect datatypes are passed where Characters are expected",
          {
            expect_error(create_faceted_hist_plot(tidy_test_data, 'Petal.Length', 'Species'))
            expect_error(create_faceted_hist_plot(tidy_test_data, 'Petal.Length', Species))
            expect_error(create_faceted_hist_plot(tidy_test_data, Petal.Length, 'Species'))
          })

test_that("`create_faceted_hist_plot` should throw an error when the dataframe provided is empty",
          {
            expect_error(create_faceted_hist_plot(empty_df, 'string', 'string'))
          })

test_that("`create_faceted_hist_plot` should throw an error when the dataframe provided is not a dataframe",
          {
            expect_error(create_faceted_hist_plot('string', 'string', 'string'))
          })

test_that("`create_faceted_hist_plot` should throw an error when the feature provided is not a string",
          {
            expect_error(create_faceted_hist_plot(empty_df, empty_df, 'string'))
          })

test_that("`create_faceted_hist_plot` should throw an error when the row provided is not a string",
          {
            expect_error(create_faceted_hist_plot(empty_df, 'empty_df', empty_df))
          })
