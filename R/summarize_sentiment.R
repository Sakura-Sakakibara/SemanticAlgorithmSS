#' Summarize sentiment results
#'
#' @param word_vector A character vector of words
#'
#' @return A list with positive, negative counts and ratio
#' @export
summarize_sentiment <- function(word_vector) {
  sentiment_words <- get_sentiment_words()
  pos_count <- match_sentiment_words(word_vector, wordlists$positive)
  neg_count <- match_sentiment_words(word_vector, wordlists$negative)
  ratio <- ifelse(neg_count == 0, NA, round(pos_count / neg_count, 2))
  return(list(
    positive = pos_count,
    negative = neg_count,
    ratio = ratio
  ))
}
