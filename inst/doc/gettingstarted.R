## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(warning=FALSE, message=FALSE, cache=FALSE, 
               comment=NA, verbose=TRUE, fig.width=5, fig.height=5, dev='jpeg',dev.args=list(quality=50))			   

## ---- fig.width=3, fig.height=3, message=FALSE, dev='jpeg'---------------
library(imagerExtra)
g <- grayscale(boats)
plot(g)

## ---- fig.width=8, fig.height=8, dev='jpeg'------------------------------
layout(matrix(1:4, 2, 2))
plot(g, main = "Original")
plot(EqualizePiecewise(g, 2), main = "N = 2")
plot(EqualizePiecewise(g, 10), main = "N = 10")
plot(EqualizePiecewise(g, 1000), main = "N = 1000")

## ---- fig.width=7, fig.height=7, dev='jpeg'------------------------------
layout(matrix(1:2, 1, 2))
plot(g, main = "Original")
plot(BalanceSimplest(g, 1, 1), main = "sleft = 1, sright = 1")

## ---- fig.width=7, fig.height=7, dev='jpeg'------------------------------
layout(matrix(1:2, 1, 2))
gbirds <- load.example("birds") %>% grayscale()
plot(gbirds, main = "Original")
plot(SPE(gbirds, 0.01), main = "SPE (lamda = 0.01)")

## ---- fig.width=7, fig.height=7, dev='jpeg'------------------------------
noisy <- g + imnoise(dim = dim(g), sd = 0.1)
layout(matrix(c(1,3,2,4), 2, 2))
plot(g, main = "Original")
plot(noisy, main = "Noisy Boats")
DenoiseDCT(noisy, 0.1) %>% plot(., main = "Denoised (8x8 window)")
DenoiseDCT(noisy, 0.1, flag_dct16x16 = TRUE) %>% plot(., main = "Denoised (16x16 window)")

## ---- fig.width=7, fig.height=7------------------------------------------
gdogs <- grayscale(dogs)
layout(matrix(1:4, 2, 2, byrow = TRUE))
plot(gdogs, main = "Original", axes=F)
ThresholdTriclass(gdogs, stopval = 0.001) %>% plot(main = "stopval = 0.001")
ThresholdTriclass(gdogs, repeatnum = 1) %>% plot(main = "repeatnum = 1")
ThresholdTriclass(gdogs, repeatnum = 3) %>% plot(main = "repeatnum = 3")

## ---- fig.height=3-------------------------------------------------------
layout(matrix(1:2,1,2))
plot(papers, main = "Original")
hello <- ThresholdAdaptive(papers, 0.1, windowsize = 17, range = c(0,1))
plot(hello, main = "Binarizesd")

