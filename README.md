
<!-- README.md is generated from README.Rmd. Please edit that file -->

# twohundredfiftythings

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)![R-CMD-check](https://github.com/eroten/twohundredfiftythings/workflows/R-CMD-check/badge.svg)
<!-- badges: end -->

`{twohundredfiftythings}` is a tiny R package that allows the user to
access Michael Sorkin’s list of things an architect should know. The
list was originally published in “What Goes Up: The Rights and Wrongs to
a City” (Sorkin (2018)).

## Background

I was inspired to make this package after listening to [99%
Invisible’s](https://99percentinvisible.org/) 400th episode: [“The
Smell of Concrete After
Rain”](https://99percentinvisible.org/episode/the-smell-of-concrete-after-rain/).
Hearing Roman Mars read through a small selection of these things, I
decided to read the entire list. I figured it would be nice to read one
of these every once in a while, so I made this package to return a
random “thing” from the list.

I was also inspired by my dear friend [Katie
Jolly](https://twitter.com/katiejolly6)’s R package,
[`{advicegiveR}`](https://github.com/katiejolly/advicegiveR). Katie
introduced me to 99pi, and I am forever grateful.

## Installation

You can install the development version of `{twohundredfiftythings}`
using `remotes::install_github()`

``` r
remotes::install_github("eroten/twohundredfiftythings")
```

## Examples

The only function is `what_should_an_architect_know()`. To get a random
thing, leave the inputs empty.

``` r
library(twohundredfiftythings)
library(dplyr)

set.seed(99)
what_should_an_architect_know()
#> [1] "The Nolli Plan."
```

You can also access a specific thing from the list.

``` r
what_should_an_architect_know(40)
#> [1] "What the client thinks it wants."
```

Input a vector of integers to get multiple things from the list.

``` r
what_should_an_architect_know(thing = c(1, 80))
#> [1] "The feel of cool marble under bare feet."
#> [2] "The reasons for (borders’) tenacity."
```

You can access the full list, as well.

``` r
head(things_an_architect_should_know)
#>   n                                                                  thing
#> 1 1                               The feel of cool marble under bare feet.
#> 2 2        How to live in a small room with five strangers for six months.
#> 3 3 (How to live with) the same five strangers in a lifeboat for one week.
#> 4 4                                                The modulus of rupture.
#> 5 5                              The distance a shout carries in the city.
#> 6 6                                             The distance of a whisper.
```

## Code of Conduct

Please note that the twohundredfiftythings project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## References

<div id="refs" class="references">

<div id="ref-roman_mars_smell_nodate">

Mars, Roman, and Trufelman, Avery. 2020. “The Smell of Concrete After
Rain.”
<https://99percentinvisible.org/episode/the-smell-of-concrete-after-rain/>.

</div>

<div id="ref-sorkin_what_2018">

Sorkin, Michael. 2018. *What Goes up: The Rights and Wrongs to the
City*. Verso Books.

</div>

</div>
