#' t_transcribe
#'
#' @param dna
#'
#' @returns rna
#' @export
#'
#' @examples
t_transcribe <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
