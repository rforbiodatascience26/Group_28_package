#' codons_to_peptide
#'
#' @param codons
#'
#' @returns Peptide corresponging the given codons
#' @export
#'

codons_to_peptide <- function(codons_vec){
  string <- paste0(codons[codons_vec], collapse = "")
  return(string)
}
