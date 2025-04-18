#' Load text
#'
#' @description
#' This function loads a .txt file using read.delim, transforms all text to lowercase,
#' and splits it into individual words, removing basic stop characters.
#'
#' @param filepath A string. The path to the .txt file.
#'
#' @return A character vector of words.
#'
#' @export
#'

load_and_preprocess_text <- function(filepath) {
  text_data <- read.delim(filepath, header = FALSE, stringsAsFactors = FALSE)
  # Combine all columns into a single string
  full_text <- paste(unlist(text_data), collapse = " ")
  # Lowercase
  full_text <- tolower(full_text)
  # Remove punctuation
  full_text <- gsub("[[:punct:]]", "", full_text)
  # Split into words
  word_vector <- unlist(strsplit(full_text, " "))
  # Remove empty strings
  word_vector <- word_vector[word_vector != ""]
  return(word_vector)
}
