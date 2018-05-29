## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- fig.width=4, fig.height=6, message=FALSE, dev='jpeg'---------------
library(imagerExtra)
g <- grayscale(boats)
plot(g)

## ---- fig.width=4, fig.height=6, dev='jpeg'------------------------------
plot(g, main = "Original")
plot(EqualizePiecewise(g, 2), main = "N = 2")
plot(EqualizePiecewise(g, 10), main = "N = 10")
plot(EqualizePiecewise(g, 1000), main = "N = 1000")

## ---- fig.width=4, fig.height=6, dev='jpeg'------------------------------
plot(g, main = "Original")
plot(BalanceSimplest(g, 1, 1), main = "sleft = 1, sright = 1")

## ---- fig.width=4, fig.height=6, dev='jpeg'------------------------------
plot(g, main = "Original")
plot(SPE(g, 1), main = "lamda = 1")

## ---- fig.width=4, fig.height=6, dev='jpeg'------------------------------
noisy <- g + imnoise(dim = dim(g), sd = 0.1)
plot(g, main = "Original")
plot(noisy, main = "Noisy Boats")
DenoiseDCT(noisy, 0.1) %>% plot(., main = "Denoised (8x8 window)")
DenoiseDCT(noisy, 0.1, flag_dct16x16 = TRUE) %>% plot(., main = "Denoised (16x16 window)")

