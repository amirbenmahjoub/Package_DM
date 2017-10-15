#' Save a data.frame as a csv file
#'
#' @param dataset  data.frame
#' @param filename a path with ".csv" at the end
#' @import assertthat
#' @return nothing
#' @export
#'
#' @examples
#' \dontrun{
#' save_as_csv("name.xls")
#' }
#'
#'
save_as_csv <- function(dataset,filename, row.names=FALSE, ...){
  assert_that(has_extension(filename,"csv"))
  assert_that(is.dir(dirname(filename)))
  assert(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))

  write.csv2(x=dataset, file=filename, row.names = row.names, ...)

  invisible(normalizePath(filename))
}
