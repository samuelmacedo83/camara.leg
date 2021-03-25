#' Funções para extrair informação da API
#'
#' A API de dados abertos da camara legislativa possui várias informações dos
#' deputados, como por exemplo: nome, foto, email, votações, entre outros.
#'
#' @examples
#' \dontrun{
#' deputados()
#' }
#'
#' @name extrair_api
NULL

#' @rdname extrair_api
#' @export
blocos <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/blocos")
}

#' @rdname extrair_api
#' @export
deputados <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/deputados")
}

#' @rdname extrair_api
#' @export
eventos <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/eventos")
}

#' @rdname extrair_api
#' @export
frentes <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/frentes")
}

#' @rdname extrair_api
#' @export
legislaturas <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/legislaturas")
}

#' @rdname extrair_api
#' @export
partidos <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/partidos")
}

#' @rdname extrair_api
#' @export
proposicoes <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/proposicoes")
}

#' @rdname extrair_api
#' @export
referencias <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/referencias")
}

#' @rdname extrair_api
#' @export
votacoes <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/votacoes")
}

#' @rdname extrair_api
#' @export
orgaos <- function(){
  extract_data("https://dadosabertos.camara.leg.br/api/v2/orgaos")
}
