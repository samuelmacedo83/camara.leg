extract_data <- function(x) {
  hrefs <- extract_hrefs(x)

  do.call("rbind",
    lapply(hrefs, function(e) {
      camara_data <- jsonlite::fromJSON(e)
      camara_data$dados
    })
  )
}

extract_hrefs <- function(x) {
  last_page <- last_page(jsonlite::fromJSON(x))
  paste0(x, "?pagina=", 1:last_page, "&itens=1000")
}


last_page <- function(x) {
  last_href <- x$links$href[x$links$rel == "last"]
  as.numeric(gsub(".*pagina=|&itens=.*", "", last_href))
}
