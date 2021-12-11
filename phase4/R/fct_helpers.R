#' R6 class representing a state of the back-end
#'
#' @description A state of the back-end
AppState <- R6::R6Class("AppState",
  public = list(
    #' @description Initialize default parameter(s)
    #'
    #' @param ncol The number of columns
    initialize = function(ncol) {
      private$ncol <- ncol
    },
    #' @description Get the number of columns
    #'
    #' @return The number of columns
    get_ncol = function() {
      private$ncol
    }
  ),
  private = list(
    # The number of columns
    ncol = 1
  )
)
