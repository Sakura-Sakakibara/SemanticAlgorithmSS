#' Match sentiment words
#'
#' @param word_vector Words from the text
#' @param sentiment_vector Positive or negative words with optional "*"
#'
#' @return Number of matched words
#' @export
match_sentiment_words <- function(word_vector, sentiment_vector) {
  match_count <- 0
  for (pattern in sentiment_vector) {
    if (grepl("\\*", pattern)) {
      root <- sub("\\*", "", pattern)
      match_count <- match_count + sum(startsWith(word_vector, root))
    } else {
      match_count <- match_count + sum(word_vector == pattern)
    }
  }
  return(match_count)
}
