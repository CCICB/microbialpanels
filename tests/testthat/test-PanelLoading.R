test_that("excel file documenting panels exists", {
  expect_true(file.exists(path_to_panels_excel()))
})

test_that("panels_available() works", {
  expect_error(panels_available(), NA)
  expect_true(is.character(panels_available()))
  expect_true(length(panels_available()) > 0)
})

test_that("panels_load() works", {
  expect_error(panels_load("asdasdklajsdklawjld", verbose=FALSE), regexp = "retry with a valid panel name")
  expect_true(is.data.frame(panels_load(panels_available()[[1]])))
})


test_that("All panels have standardised columns names", {
  standardised_columns = c('ScientificName', 'Taxid', 'Type', 'Rank')

  panel_dfs <- panel_load_all()

  has_all_std_names <- sapply(panel_dfs, function(panel_df){ all(standardised_columns %in% colnames(panel_df))})
  names(has_all_std_names) <- names(panel_dfs)

  expect_true(all(has_all_std_names))
})

test_that("All panels have at least one row columns names", {

  panel_dfs <- panel_load_all()

  panel_nrows <- sapply(panel_dfs, nrow)
  names(panel_nrows) <- names(panel_dfs)

  expect_true(all(panel_nrows > 0))
})
