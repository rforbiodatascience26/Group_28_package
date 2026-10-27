#' Make Codons
#'
#' @param sequence the sequence that you wish to split into codons
#' @param start the start position of the sequence that you wish to format
#'
#' @return A character vector where each element is one codon
#' @export
#'
make_codons <- function(sequence, start = 1){
  #counting number of characters in string
  seq_length <- nchar(sequence)
  #pulling the string given start and end postion
  codons <- substring(sequence,
                      #the first position of each substring, from start to the end(start of last codon) going by 3(codons)
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      #the last position of each substring, from start(end of first codon) to the end going by 3(codons)
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
