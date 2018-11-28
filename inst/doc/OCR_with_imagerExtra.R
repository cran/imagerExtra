## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(warning=FALSE, message=FALSE, cache=FALSE, 
               comment=NA, verbose=TRUE, fig.width=5, fig.height=5, dev='jpeg',dev.args=list(quality=50))

## ---- fig.height=3-------------------------------------------------------
library(imagerExtra)
plot(papers, main = "Original")
OCR(papers) %>% print
OCR_data(papers) %>% print

## ---- fig.height=3-------------------------------------------------------
hello <- DenoiseDCT(papers, 0.01) %>% ThresholdAdaptive(., 0.1, range = c(0,1))
plot(hello, main = "Hello")
OCR(hello) %>% print
OCR_data(hello) %>% print

