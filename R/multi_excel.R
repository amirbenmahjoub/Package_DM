
#' import all sheet from an excel file
#'
#' @param file path to xlsx file
#' @import readxl assertthat
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#' multi_excel("/folder/toxlsxfile")
#' }
multi_excel <- function(file){
  assert_that(is.dir(file))
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet){readxl::read_excel(file,sheet=sheet)} )
  return(result)
}
