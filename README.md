
<!-- README.md is generated from README.Rmd. Please edit that file -->
nzbabynames
===========

The nzbabynames package provides the following datasets

-   `nzbabynames` This data set includes the sex and count of each first name from 1900 to 2017. The data set includes all names with more than 10 instances in any given year. Source: <https://catalogue.data.govt.nz/dataset/baby-name-popularity-over-time/>

``` r
library(nzbabynames)
head(nzbabynames)
#>   Year    Sex    Name Count
#> 1 1997 Female Aaliyah    10
#> 2 1998 Female Aaliyah    22
#> 3 1999 Female Aaliyah    24
#> 4 2000 Female Aaliyah    26
#> 5 2001 Female Aaliyah    54
#> 6 2002 Female Aaliyah    81
```

-   `maorinames` This data set includes the top 20 Māori baby names for 2016 and 2015 by sex. In 2015 data only includes children born in NZ, in 2016 rankings Māori baby names among children born overseas are also included Source: <https://catalogue.data.govt.nz/dataset/most-popular-male-and-female-first-names>

``` r
head(maorinames)
#>      Name    Sex Source Year Born Rank
#> 1    Maia Female  Maori 2015   NZ    1
#> 2  Manaia Female  Maori 2015   NZ    2
#> 3 Anahera Female  Maori 2015   NZ    3
#> 4     Ana Female  Maori 2015   NZ    4
#> 5   Aroha Female  Maori 2015   NZ    5
#> 6    Kaia Female  Maori 2015   NZ    6
```

-   `nzbirths` Data on live births from 1935-2017. Data from 1971 includes live births by sex. *Note: Data before 1991 includes New Zealand residents and overseas visitors. Data from 1991 includes New Zealand residents only.*

``` r
head(nzbirths)
#>   Year Male Female Total
#> 1 1935   NA     NA 27150
#> 2 1936   NA     NA 28395
#> 3 1937   NA     NA 29895
#> 4 1938   NA     NA 30846
#> 5 1939   NA     NA 32871
#> 6 1940   NA     NA 36945
```

Installation
------------

You can install the released version of nzbabynames from github:

``` r
install_github("ropenscilabs/nzbabynames")
```
