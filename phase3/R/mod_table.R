#' table UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_table_ui <- function(id) {
  tagList(shiny::tableOutput(shiny::NS(id, "tbl")))
}

#' table Server Functions
#'
#' @noRd
mod_table_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$tbl <- shiny::renderTable({
      shinipsum::random_table(nrow = 3, ncol = 4)
    })
  })
}
