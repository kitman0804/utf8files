#ref: https://tomizonor.wordpress.com/2013/04/17/file-utf8-windows/
#ref: http://stackoverflow.com/questions/16028658/unicode-conversion-and-export-in-r

#========readUTF8========#
if (!"stringr"%in%rownames(installed.packages())) install.packages("stringr")

readUTF8 <- function(file, header = TRUE, sep = "\t", stringsAsFactors = FALSE) {
  x <- readLines(file)
  x <- iconv(x, from = "UTF-8", to = "UTF-8")
  x <- stringr::str_split(x, sep)
  if (header) {
    header <- x[[1]]
    x <- x[-1]
  } else {
    header <- NULL
    x <- x
  }
  x <- Reduce(function(...) rbind(..., deparse.level = 0), x)
  x <- as.data.frame(x, stringsAsFactors = stringsAsFactors)
  if (!is.null(header)) names(x) <- header
  return(x)
}
