% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DCT_denoising.R
\name{DenoiseDCT}
\alias{DenoiseDCT}
\title{denoise image by DCT denoising}
\usage{
DenoiseDCT(im, sdn, flag_dct16x16 = FALSE)
}
\arguments{
\item{im}{a grayscale image of class cimg}

\item{sdn}{standard deviation of Gaussian white noise}

\item{flag_dct16x16}{flag_dct16x16 determines the size of patches. if TRUE, the size of patches is 16x16. if FALSE, the size if patches is 8x8.}
}
\value{
a grayscale image of class cimg
}
\description{
denoise image by DCT denoising
}
\examples{
dev.new()
par(mfcol = c(1,2))
boats_g <- grayscale(boats)
boats_noisy <- imnoise(dim = dim(boats_g), sd = 0.05) + boats_g 
plot(boats_noisy, main = "Noisy Boats")
DenoiseDCT(boats_g, 0.05) \%>\% plot(., main = "Denoised Boats")
}
\references{
Guoshen Yu, and Guillermo Sapiro, DCT Image Denoising: a Simple and Effective Image Denoising Algorithm, Image Processing On Line, 1 (2011), pp. 292-296. \url{https://doi.org/10.5201/ipol.2011.ys-dct}
}
\author{
Shota Ochi
}
