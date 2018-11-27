#' NZ Baby names.
#'
#' Full baby name data NZ. This includes all names with at
#' least 10 uses.
#'
#' @format A data frame with five variables: \code{Year}, \code{Sex},
#'   \code{Name}, \code{Count}.
"nzbabynames"

#' Maori names.
#'
#' The  top 20 Māori baby names for 2016 and 2015 by sex.
#' In 2015 data only includes children born in NZ, in 2016 rankings Māori baby
#' names among children born overseas are also included
#'
#' @format A data frame with 6 variables: \code{Name}, \code{Sex},
#'   \code{Source}, \code{Year}, \code{Born} and \code{Rank}
#'
#'
"maorinames"

#' life_tables
#'
#' Complete cohort life tables data as provided Stats NZ
#'
#' @format A data frame with nine variables:
#' \describe{
#' \item{\code{yearofbirth}}{Year of birth}
#' \item{\code{age}}{age in years}
#' \item{\code{sex}}{Sex}
#' \item{\code{percentile}}{percentile of the estimate}
#' \item{\code{dx}}{number of deaths that would occur between integral ages}
#' \item{\code{ex}}{Expected number of years of life remaining at age x}
#' \item{\code{llx}}{Average number alive in the age interval  out of 100,000 people born}
#' \item{\code{lx}}{Number alive at exact age out of 100,000 people born}
#' \item{\code{mx}}{proportion of individuals of age \code{x} dying by age  \code{x+1}}
#' \item{\code{px}}{Probabilty a person who reaches that age lives for the age interval}
#' \item{\code{sx}}{Proportion of age group x to x+5 surviving another 5 years}
#' \item{\code{qx}}{Probabilty a person who reaches that age dies within the age interval}
#' }

"life_tables"

#' nzbirths
#'
#' Data on live births from 1935-2017. Data from 1971 includes live births by
#' sex. *Note: Data before 1991 includes New Zealand residents and overseas
#' visitors. Data from 1991 includes New Zealand residents only.*
#'
#' @format A data frame:
#' \describe{
#' \item{Year}{Year}
#' \item{Male}{Number of live births recorded as 'Male'}
#' \item{Female}{Number of live births recorded as 'Female'}
#' \item{Total}{Total number of live births}}
"nzbirths"
