#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  ncol <- as.numeric(get_golem_config(value = "ncol"))
  state <- AppState$new(ncol = ncol)
  mod_table_server("sample", state)
}
