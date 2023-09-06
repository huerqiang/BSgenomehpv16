
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BSgenomehpv16

<!-- badges: start -->
<!-- badges: end -->

HPV16 genome

## :writing_hand: Authors

Erqiang Hu: Department of Bioinformatics, School of Basic Medical Sciences, Southern
Medical University.

Shanye Yin： Albert Einstein College of Medicine

## :arrow_double_down: Installation

You can install the released version of multiEnrichment from
[Github](https://github.com/huerqiang/multiEnrichment/tree/master) with:

``` r
devtools::install_github("huerqiang/BSgenomehpv16")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(BSgenomehpv16)
```

``` r
getSeq(BSgenomehpv16, "NC_001526.2", start = 4570, end = 4667)
#> 98-letter DNAString object
#> seq: CTAGTTTTATTGATGCTGGTGCACCAACATCTGTAC...TTTAGTATTACTACTTCAACTGATACCACACCTGCT
## basic example code
```
