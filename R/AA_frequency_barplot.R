#' Barplot of Amino Acid frequencies
#'
#' @description
#' Given a protein sequence, it returns a barplot with the absolute frequencies
#' of each Amino Acid present in the sequence
#'
#' @param protein_sequence a string representing a protein sequence
#'
#' @returns a barplot with the absolute frequencies of each AA in the sequence
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
#'
#' @examples AA_frequency_barplot("MSSGFSMMLLTAA")
AA_frequency_barplot <- function(protein_sequence){
  protein_AAs <- protein_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
  # storing the unique AAs present in the sequence

  counts <- sapply(protein_AAs,
                   function(amino_acid) stringr::str_count(string = protein_sequence,
                                                           pattern =  amino_acid)
                   ) |>
    as.data.frame()
  # for each AA count its absolute frequency in the sequence
  # returns a named list with AAs as names and counts as values

  colnames(counts) <- c("Counts")
  counts[["AA"]] <- rownames(counts)
  # creates a column "AA" with the AA names

  AA_barplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AA,
                                 y = Counts,
                                 fill = AA)
    ) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")
  # barplot of absolute frequences of AAs in the protein sequence

  return(AA_barplot)
}
