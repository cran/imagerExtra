## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(warning=FALSE, message=FALSE, cache=FALSE, 
               comment=NA, verbose=TRUE, fig.width=5, fig.height=5, dev='jpeg',dev.args=list(quality=50))			   

## ---- fig.width=4, fig.height=4, message=FALSE, dev='jpeg'---------------
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
plot(g, main = "Original")
plot(SPE(g, 1), main = "lamda = 1")

## ---- fig.width=7, fig.height=7, dev='jpeg'------------------------------
noisy <- g + imnoise(dim = dim(g), sd = 0.1)
layout(matrix(c(1,3,2,4), 2, 2))
plot(g, main = "Original")
plot(noisy, main = "Noisy Boats")
DenoiseDCT(noisy, 0.1) %>% plot(., main = "Denoised (8x8 window)")
DenoiseDCT(noisy, 0.1, flag_dct16x16 = TRUE) %>% plot(., main = "Denoised (16x16 window)")

## ---- fig.width=7, fig.height=7------------------------------------------
g <- grayscale(dogs)
layout(matrix(1:4, 2, 2, byrow = TRUE))
plot(g, main = "Original", axes=F)
ThresholdTriclass(g, stopval = 0.01) %>% plot(main = "stopval = 0.01", axes=F)
ThresholdTriclass(g, repeatnum = 1) %>% plot(main = "repeatnum = 1", axes=F)
ThresholdTriclass(g, repeatnum = 3) %>% plot(main = "repeatnum = 3", axes=F)

