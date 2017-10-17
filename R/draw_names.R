#' Plot the evolution of names occurences for different names
#'
#' @param names names you want to observe occurences data
#' @import dplyr tidyr ggplot2 prenoms
#' @return  graph.
#' @export
#'
#' @examples
#' \dontrun{
#'
#' draw_names(c("name1","name2",...))
#'
#' }

draw_names <- function(names){
  
  
  assert_that(is.character(class(names)))
  
  data("dataprenoms",package = "myfirstpackage")
  dataprenoms %>% filter(name %in% names) %>%
    group_by(year,name) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=year, y=count,color=name))+ geom_line()
}
