#!/usr/bin/env Rscript

# install_github('nevrome/rdoxygen')

#' Add 3 to any input.
#' @description one better than the matlab/octave @ref add2
#' @param x numeric input 
#' @return 3 greater than input
#' @warning input must be numeric
add3 <- function(x) x + 3

if(sys.nframe() == 0) add3(1)

