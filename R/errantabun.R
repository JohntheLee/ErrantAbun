#' Errant abundance matrix function
#'
#' @description
#' `errantabun()` allows for the calculation of an errant species abundance matrix
#' using an original species abundance matrix and a statistical distribution of choice.
#'
#' `errantabun()` utilizes the rpois and the rbinom functions to create an abundance
#' distribution for each species. The lambda for the Poisson distribution is the original
#' abundance (vector) for each species. The size for the binomial distribution is the original
#' abundance (vector) for each species.
#'
#' `errantabun()` takes in a matrix as input and provides a data frame as output.
#'
#' @param abun The original abundance matrix. Columns must represent species, and rows must represent plots/blocks/etc.
#' @param method The statistical distribution of choice: "Poisson" or "binomial".
#' @param prob The probability weight used to construct the binomial distribution. Not relevant for Poisson distribution.
#'
#' @keywords errant, abundance, distribution, Poisson, binomial, random
#'
#' @import magrittr stats
#' @importFrom dplyr funs rename rename_all quo
#'
#' @example
#' errantabun(abun = ksr_species, method = "Poisson", prob = 0.8)
#'
#' @export
errantabun <- function(abun, method, prob){
  list_errant_abun <- list()
  species_list <- as.numeric(factor(colnames(abun)))
  for(i in seq_along(species_list)){
    if(method == "Poisson"){
      poisson_abun <- rpois(n = nrow(abun), lambda = abun[ , i])
      list_errant_abun[[i]] <- poisson_abun
    }
    else if(method == "binomial"){
      binom_abun <- rbinom(n = nrow(abun), size = abun[ , i], prob = prob)
      list_errant_abun[[i]] <- binom_abun
    }
  }
  return(data.frame((list_errant_abun)) %>%
    rename_all(funs(quo(colnames(abun)))) %>%
    cbind(rownames(abun), .) %>%
    rename("Plot" = "rownames(abun)"))
}
