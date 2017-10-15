
#' import multiple csv files
#'
#' @param folder path to the folder
#'
#' @return a list
#' @export
#' @importFrom utils read.csv2
#' @import assertthat
#' @examples
#' \dontrun{
#'
#' my_csv_reader("../../path/to/folder")
#'
#' }
#'
my_csv_reader <- function(folder){
  assert_that(is.dir(file))
  temp <- list.files(path=folder, pattern = ".csv")
  result <- lapply(temp, read.csv2)
  return(result)
}
