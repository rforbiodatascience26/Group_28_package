#' Create a DNA sequence
#'
#' @param seq_length amount of bases
#'
#' @returns sequence of dna of the asked length
#' @export
#'
#' @examples random_dna(10)
random_dna <- function(seq_length){
  bases <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  seq <- paste0(bases, collapse = "")
  return(seq)
}
