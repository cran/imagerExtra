## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(warning=FALSE, message=FALSE, cache=FALSE, 
               comment=NA, verbose=TRUE, fig.width=5, fig.height=5, dev='jpeg',dev.args=list(quality=50))			   

## ---- fig.height=3-------------------------------------------------------
library(imagerExtra)
plot(papers, main = "Original")
OCR(papers) %>% cat
OCR_data(papers)

## ---- fig.height=3-------------------------------------------------------
binarized <- ThresholdAdaptive(papers, 0, range = c(0,1))
plot(binarized, main = "Local Adaptive threshold")
OCR(binarized) %>% cat

## ---- fig.height=3-------------------------------------------------------
hello <- DenoiseDCT(papers, 0.01) %>% ThresholdAdaptive(., 0.1, range = c(0,1))
plot(hello, main = "Hello")
OCR(hello) %>% cat
OCR_data(hello)

