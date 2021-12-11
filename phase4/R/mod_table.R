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
#' @param id,input,output,session Internal parameters for {shiny}.
#' @param state The state of the back-end
#'
#' @noRd
mod_table_server <- function(id, state) {
  moduleServer(id, function(input, output, session) {
    output$tbl <- shiny::renderTable({
      shinipsum::random_table(nrow = 3, ncol = state$get_ncol())
    })
  })
}
