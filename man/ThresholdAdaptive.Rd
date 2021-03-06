% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/local_adaptive_thresholding.R
\name{ThresholdAdaptive}
\alias{ThresholdAdaptive}
\title{Local Adaptive Thresholding}
\usage{
ThresholdAdaptive(im, k, windowsize = 17, range = c(0, 255))
}
\arguments{
\item{im}{a grayscale image of class cimg}

\item{k}{a numeric in the range [0,1]. when k is high, local threshold values tend to be lower. when k is low, local threshold value tend to be higher.}

\item{windowsize}{windowsize controls the number of local neighborhood}

\item{range}{this function assumes that the range of pixel values of of input image is [0,255] by default. you may prefer [0,1]. 
Note that range determines the max standard deviation. The max standard deviation plays an important role in this function.}
}
\value{
a pixel set
}
\description{
Local Adaptive Thresholding
}
\examples{
layout(matrix(1:4, 2, 2))
plot(papers, main = "Original")
threshold(papers) \%>\% plot(main = "A variant of Otsu")
ThresholdAdaptive(papers, 0, range = c(0,1)) \%>\% plot(main = "local adaptive (k = 0)")
ThresholdAdaptive(papers, 0.2, range = c(0,1)) \%>\% plot(main = "local adaptive (k = 0.2)")
}
\references{
Faisal Shafait, Daniel Keysers, Thomas M. Breuel, "Efficient implementation of local adaptive thresholding techniques using integral images", Proc. SPIE 6815, Document Recognition and Retrieval XV, 681510 (28 January 2008)
}
\author{
Shota Ochi
}
