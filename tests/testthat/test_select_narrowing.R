library("rquery")

context("select narrowing")

test_that("test_select_narrowing.R: Works As Expected", {
  db <- rquery_db_info(identifier_quote_char = "`", string_quote_char = '"')
  x <- data.frame(a = 1:3, b = 4:6, c = 7:9)

  op1 <- local_td(x) %.>% extend_nse(., e %:=% a + 1)
  # cat(to_sql(op1, db))
  testthat::expect_equal(sort(column_names(op1)), c("a", "b", "c", "e"))

  op2 <- op1 %.>% select_columns(., "e")
  # cat(to_sql(op2, db))
  testthat::expect_equal(sort(column_names(op2)), c("e"))

  op3 <- op1 %.>% select_columns(., "b")
  # cat(to_sql(op3, db))
  testthat::expect_equal(sort(column_names(op3)), c("b"))

  op4 <- local_td(x) %.>% extend_nse(., a %:=% a + 1)
  # cat(to_sql(op4, db))
  testthat::expect_equal(sort(column_names(op4)), c("a", "b", "c"))

  op5 <- op4 %.>% select_columns(., "a")
  # cat(to_sql(op5, db))
  testthat::expect_equal(sort(column_names(op5)), c("a"))

  op6 <- op4 %.>% select_columns(., "b")
  # cat(to_sql(op6, db))
  testthat::expect_equal(sort(column_names(op6)), c("b"))

  op7 <- op4 %.>% select_columns(., c("a", "b"))
  # cat(to_sql(op7, db))
  testthat::expect_equal(sort(column_names(op7)), c("a", "b"))
})
