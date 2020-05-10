#' What an architect should know
#'
#' @param thing a single numeric value or a vector of numeric values between 1 and 250.
#'
#' @return a random vector of things an architect should know
#' @export
#'
#' @examples
#'
#' what_should_an_architect_know()
#'
#' what_should_an_architect_know(1:10)
#'
#' @importFrom magrittr %>%
#' @importFrom dplyr filter
what_should_an_architect_know <- function(thing = sample(1:250, size = 1)){
  # browser()
  if(length(thing) == 1){
    if(!(thing%%1 == 0)){
      stop("Error: thing must be an integer")
    }

    if(!(thing >= 1 & thing <= 250)){
      stop("Error: thing must be between 1 and 250")
    }
  } else if(length(thing) > 1){
    if(!class(thing) == "integer"){
      if(!class(thing) == "numeric"){


      stop("Error: thing must be a vector of integers")
      }
    }

    if(!(any(thing) >= 1 & any(thing) <= 250)){
      stop("Error: all things must be between 1 and 250")
    }
  }

  thing_char <- as.character(thing)

  return_things <- twohundredfiftythings::things_an_architect_should_know %>%
    dplyr::filter(as.character(.$n) %in% thing_char)

  return(return_things$thing)
}
