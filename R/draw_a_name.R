
#' Given a name, the trend of the number of occurence
#'
#' @param a_name name
#' @import tidyr dplyr ggplot2 prenoms assertthat
#' @return a graph
#' @export
#'
#' @examples
#' \dontrun{
#' draw_a_name("the name you want")
#' }
#'

draw_a_name <- function(a_name){
  assert_that(is.character(a_name))
  data("dataprenoms",package = "myfirstpackage")
dataprenoms %>% filter(name==a_name) %>%
    group_by(year) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=year, y=count)) + geom_line()
}
