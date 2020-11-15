#' Species abundance dataset from KSR
#'
#' @description
#' This species abundance dataset is collected from the Koffler Scientific Reserve at Joker's Hill (University of Toronto).
#'
#' Fourteen blocks serve as disparate communities of grassland plant species. Each block contains an array of different-sized plots: 8 0.5m^2, 8 1m^2, and 4 2m^2 plots.
#'
#' This abundance dataset must be transformed into an abundance matrix, with columns representing species and rows representing the plot/block/etc. of choice.
#'
#' @docType data
#'
#' @usage data(ksr_species)
#'
#' @format A dataset with 280 rows and 74 variables:
#' \describe{
#'  \item{Block}{block number}
#'  \item{Plot}{plot number}
#'  \item{Plot_size}{size of plot, in m^2}
#'  \item{species}{scientific name of species}
#' }
#'
#' @keywords dataset, species, abundance
#'
#' @references Leila Forsyth. TBD
#'
#' @source Leila Forsyth. TBD
#'
#' LazyData: true
#'
#' @examples
#' ksr_species_matrix <- ksr_species %>% filter(Size == 2) %>% unite(Plot, c(Block, Plot), remove = TRUE, sep = ".") %>% transform(Plot = as.numeric(Plot)) %>% column_to_rownames(var = "Plot") %>% data.matrix
#'

"ksr_species"
