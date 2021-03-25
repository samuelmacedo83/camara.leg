camara.leg: Ferramenta para Extrair Dados da API de Dados Abertos da
Câmara Legislativa
================

A API de dados abertos da camara legislativa possui várias informações
dos deputados, como por exemplo: nome, foto, email, votações, entre
outros. O pacote camara.leg foi desenvolvido para auxiliar os usuários a
acessar a API, baixar os dados e entregar em data frame. Para mais
informações de todo o conteúdo que você pode extrair, acesse a [página
oficial](https://dadosabertos.camara.leg.br/).

## Instalação

Para acessar e instalar a versão mais atual do camara.leg, use os
comandos abaixo e reinicie sua sessão R:

``` r
install.packages("devtools")
devtools::install_github("samuelmacedo83/camara.leg")
```

Carregue o pacote

``` r
library(camara.leg)
```

## Baixando as informações da API

A API de dados abertos permite acessar as seguintes informações:

  - blocos
  - deputados
  - eventos
  - frentes
  - legislaturas
  - partidos
  - proposições
  - referências
  - votações
  - orgãos

Para acessar esses dados usando o pacote camara.leg basta chamar uma
função com o nome a da informação desejada (sem acentos). Veja os
exemplos a seguir.

``` r
deputados()
orgaos()
votacoes()
```

## Exemplo de uso usando dplyr

Como o camara.leg já converte os dados da API para data frame é possível
fazer manipulações na base usando o dplyr.

``` r
# use install.packages("dplyr") caso ainda não tenha instalado
library(dplyr)

deputados <- deputados()

deputados %>% 
  filter(siglaUf == "PE") %>% 
  select(nome, siglaPartido, email) %>% 
  head()
```

    ##               nome  siglaPartido                             email
    ## 1   André de Paula           PSD    dep.andredepaula@camara.leg.br
    ## 2   André Ferreira           PSC   dep.andreferreira@camara.leg.br
    ## 3 Augusto Coutinho SOLIDARIEDADE dep.augustocoutinho@camara.leg.br
    ## 4     Carlos Veras            PT     dep.carlosveras@camara.leg.br
    ## 5    Daniel Coelho     CIDADANIA    dep.danielcoelho@camara.leg.br
    ## 6    Danilo Cabral           PSB    dep.danilocabral@camara.leg.br
