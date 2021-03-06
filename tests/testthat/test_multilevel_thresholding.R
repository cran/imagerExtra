library(imagerExtra)
test_that("multilevel thresholding",
{
    notim <- 1
    im <- boats
    gim <- grayscale(im)
    mat_gim <- as.matrix(gim)
    gim2 <- imrep(gim, 2) %>% imappend(., "z")
    im_NA <- as.cimg(matrix(NA, 100, 100))
    im_uniform <- as.cimg(matrix(1,100,100))
    bad1 <- "A"
    bad2 <- -1
    bad3 <- c(0.1,0.1,0.1)
    bad4 <- NA
    bad5 <- NULL
    k_c <- 2
    vec_good <- c(0.1,0.5)
    vec_bad1 <- numeric(0)
    
    expect_error(ThresholdML(notim, k_c))
    expect_error(ThresholdML(im, k_c))
    expect_error(ThresholdML(gim2, k_c))
    expect_error(ThresholdML(im_NA, k_c))
    expect_error(ThresholdML(im_uniform, k_c))
    expect_error(ThresholdML(gim, bad1))
    expect_error(ThresholdML(gim, bad2))
    expect_error(ThresholdML(gim, bad3))
    expect_error(ThresholdML(gim, bad4))
    expect_error(ThresholdML(gim, bad5))
    expect_error(ThresholdML(gim, k_c, thr = "manual", returnvalue = bad1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", returnvalue = bad2))
    expect_error(ThresholdML(gim, k_c, thr = "manual", returnvalue = bad3))
    expect_error(ThresholdML(gim, k_c, thr = "manual", returnvalue = bad4))
    expect_error(ThresholdML(gim, k_c, thr = "manual", returnvalue = bad5))
    expect_error(ThresholdML(gim, k_c, thr = "manual", sn = bad1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", sn = bad2))
    expect_error(ThresholdML(gim, k_c, thr = "manual", sn = bad3))
    expect_error(ThresholdML(gim, k_c, thr = "manual", sn = bad4))
    expect_error(ThresholdML(gim, k_c, thr = "manual", sn = bad5))
    expect_error(ThresholdML(gim, k_c, thr = "manual", sn = 1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", mcn = bad1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", mcn = bad2))
    expect_error(ThresholdML(gim, k_c, thr = "manual", mcn = bad3))
    expect_error(ThresholdML(gim, k_c, thr = "manual", mcn = bad4))
    expect_error(ThresholdML(gim, k_c, thr = "manual", mcn = bad5))
    expect_error(ThresholdML(gim, k_c, thr = "manual", intervalnumber = bad1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", intervalnumber = bad2))
    expect_error(ThresholdML(gim, k_c, thr = "manual", intervalnumber = bad3))
    expect_error(ThresholdML(gim, k_c, thr = "manual", intervalnumber = bad4))
    expect_error(ThresholdML(gim, k_c, thr = "manual", intervalnumber = bad5))    
    expect_error(ThresholdML(gim, k_c, thr = "manual", intervalnumber = 1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", limit = bad1))
    expect_error(ThresholdML(gim, k_c, thr = "manual", limit = bad2))
    expect_error(ThresholdML(gim, k_c, thr = "manual", limit = bad3))
    expect_error(ThresholdML(gim, k_c, thr = "manual", limit = bad4))
    expect_error(ThresholdML(gim, k_c, thr = "manual", limit = bad5))
    expect_is(ThresholdML(gim, k_c, returnvalue = TRUE), "numeric")
    expect_s3_class(ThresholdML(gim, k_c), "cimg")
    expect_is(ThresholdML(gim, k_c, thr = "precise", returnvalue = TRUE), "numeric")
    expect_s3_class(ThresholdML(gim, k_c, thr = "precise"), "cimg")
    expect_is(ThresholdML(gim, k_c, thr = "manual", returnvalue = TRUE), "numeric")
    expect_s3_class(ThresholdML(gim, k_c, thr = "manual"), "cimg")
    expect_error(ThresholdML(gim, thr = bad1))
    expect_error(ThresholdML(gim, thr = bad4))
    expect_error(ThresholdML(gim, thr = bad5))
    expect_error(ThresholdML(gim, thr = vec_bad1))
    expect_is(ThresholdML(gim, thr = vec_good, returnvalue = TRUE), "numeric")
    expect_s3_class(ThresholdML(gim, thr = vec_good), "cimg")
})