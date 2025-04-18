#' Create wordlists
#'
#' @description
#' Returns vectors of simple positive and negative sentiment words or stems,
#' based on observed patterns in the example diary text.
#'
#' @return A list with two elements: positive and negative words
#' @export
#'
#' @examples
#' wordlists <- get_sentiment_words()
#' wordlists$positive
#' wordlists$negative

get_sentiment_words <- function() {
  negative_words <- c(
    "tired", "fatigue", "heavy", "help*", "barely", "restless",
    "nause*", "frustrat*", "trapped", "bug", "off", "manage", "cooperate"
  )

  positive_words <- c(
    "hope*", "reasonable", "bed", "pass", "tea", "toast", "sleep"
  )

  return(list(negative = negative_words, positive = positive_words))
}
