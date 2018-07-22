// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// DCTdenoising
Rcpp::NumericMatrix DCTdenoising(Rcpp::NumericMatrix ipixelsR, int width, int height, double sigma, int flag_dct16x16);
RcppExport SEXP _imagerExtra_DCTdenoising(SEXP ipixelsRSEXP, SEXP widthSEXP, SEXP heightSEXP, SEXP sigmaSEXP, SEXP flag_dct16x16SEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type ipixelsR(ipixelsRSEXP);
    Rcpp::traits::input_parameter< int >::type width(widthSEXP);
    Rcpp::traits::input_parameter< int >::type height(heightSEXP);
    Rcpp::traits::input_parameter< double >::type sigma(sigmaSEXP);
    Rcpp::traits::input_parameter< int >::type flag_dct16x16(flag_dct16x16SEXP);
    rcpp_result_gen = Rcpp::wrap(DCTdenoising(ipixelsR, width, height, sigma, flag_dct16x16));
    return rcpp_result_gen;
END_RCPP
}
// DCT2D_reorder
Rcpp::NumericMatrix DCT2D_reorder(Rcpp::NumericMatrix mat);
RcppExport SEXP _imagerExtra_DCT2D_reorder(SEXP matSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type mat(matSEXP);
    rcpp_result_gen = Rcpp::wrap(DCT2D_reorder(mat));
    return rcpp_result_gen;
END_RCPP
}
// DCT2D_fromDFT
Rcpp::NumericMatrix DCT2D_fromDFT(Rcpp::ComplexMatrix mat);
RcppExport SEXP _imagerExtra_DCT2D_fromDFT(SEXP matSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::ComplexMatrix >::type mat(matSEXP);
    rcpp_result_gen = Rcpp::wrap(DCT2D_fromDFT(mat));
    return rcpp_result_gen;
END_RCPP
}
// IDCT2D_toDFT
Rcpp::ComplexMatrix IDCT2D_toDFT(Rcpp::NumericMatrix mat);
RcppExport SEXP _imagerExtra_IDCT2D_toDFT(SEXP matSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type mat(matSEXP);
    rcpp_result_gen = Rcpp::wrap(IDCT2D_toDFT(mat));
    return rcpp_result_gen;
END_RCPP
}
// IDCT2D_retrievex
Rcpp::NumericMatrix IDCT2D_retrievex(Rcpp::NumericMatrix mat);
RcppExport SEXP _imagerExtra_IDCT2D_retrievex(SEXP matSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type mat(matSEXP);
    rcpp_result_gen = Rcpp::wrap(IDCT2D_retrievex(mat));
    return rcpp_result_gen;
END_RCPP
}
// make_prob_otsu
Rcpp::NumericVector make_prob_otsu(Rcpp::NumericVector ordered, Rcpp::NumericVector bins, int intervalnumber, int width, int height);
RcppExport SEXP _imagerExtra_make_prob_otsu(SEXP orderedSEXP, SEXP binsSEXP, SEXP intervalnumberSEXP, SEXP widthSEXP, SEXP heightSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type ordered(orderedSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type bins(binsSEXP);
    Rcpp::traits::input_parameter< int >::type intervalnumber(intervalnumberSEXP);
    Rcpp::traits::input_parameter< int >::type width(widthSEXP);
    Rcpp::traits::input_parameter< int >::type height(heightSEXP);
    rcpp_result_gen = Rcpp::wrap(make_prob_otsu(ordered, bins, intervalnumber, width, height));
    return rcpp_result_gen;
END_RCPP
}
// get_th_otsu
double get_th_otsu(Rcpp::NumericVector prob_otsu, Rcpp::NumericVector bins);
RcppExport SEXP _imagerExtra_get_th_otsu(SEXP prob_otsuSEXP, SEXP binsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type prob_otsu(prob_otsuSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type bins(binsSEXP);
    rcpp_result_gen = Rcpp::wrap(get_th_otsu(prob_otsu, bins));
    return rcpp_result_gen;
END_RCPP
}
// threshold_adaptive
Rcpp::NumericMatrix threshold_adaptive(Rcpp::NumericMatrix mat, double k, int windowsize, double maxsd);
RcppExport SEXP _imagerExtra_threshold_adaptive(SEXP matSEXP, SEXP kSEXP, SEXP windowsizeSEXP, SEXP maxsdSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type mat(matSEXP);
    Rcpp::traits::input_parameter< double >::type k(kSEXP);
    Rcpp::traits::input_parameter< int >::type windowsize(windowsizeSEXP);
    Rcpp::traits::input_parameter< double >::type maxsd(maxsdSEXP);
    rcpp_result_gen = Rcpp::wrap(threshold_adaptive(mat, k, windowsize, maxsd));
    return rcpp_result_gen;
END_RCPP
}
// piecewise_transformation
Rcpp::NumericVector piecewise_transformation(Rcpp::NumericVector data, Rcpp::NumericVector F, int N, double smax, double smin, double max, double min, double max_range, double min_range);
RcppExport SEXP _imagerExtra_piecewise_transformation(SEXP dataSEXP, SEXP FSEXP, SEXP NSEXP, SEXP smaxSEXP, SEXP sminSEXP, SEXP maxSEXP, SEXP minSEXP, SEXP max_rangeSEXP, SEXP min_rangeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type data(dataSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type F(FSEXP);
    Rcpp::traits::input_parameter< int >::type N(NSEXP);
    Rcpp::traits::input_parameter< double >::type smax(smaxSEXP);
    Rcpp::traits::input_parameter< double >::type smin(sminSEXP);
    Rcpp::traits::input_parameter< double >::type max(maxSEXP);
    Rcpp::traits::input_parameter< double >::type min(minSEXP);
    Rcpp::traits::input_parameter< double >::type max_range(max_rangeSEXP);
    Rcpp::traits::input_parameter< double >::type min_range(min_rangeSEXP);
    rcpp_result_gen = Rcpp::wrap(piecewise_transformation(data, F, N, smax, smin, max, min, max_range, min_range));
    return rcpp_result_gen;
END_RCPP
}
// screened_poisson_dct
Rcpp::NumericMatrix screened_poisson_dct(Rcpp::NumericMatrix data, double L);
RcppExport SEXP _imagerExtra_screened_poisson_dct(SEXP dataSEXP, SEXP LSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericMatrix >::type data(dataSEXP);
    Rcpp::traits::input_parameter< double >::type L(LSEXP);
    rcpp_result_gen = Rcpp::wrap(screened_poisson_dct(data, L));
    return rcpp_result_gen;
END_RCPP
}
// saturateim
Rcpp::NumericVector saturateim(Rcpp::NumericVector data, double max_im, double min_im, double max_range, double min_range);
RcppExport SEXP _imagerExtra_saturateim(SEXP dataSEXP, SEXP max_imSEXP, SEXP min_imSEXP, SEXP max_rangeSEXP, SEXP min_rangeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type data(dataSEXP);
    Rcpp::traits::input_parameter< double >::type max_im(max_imSEXP);
    Rcpp::traits::input_parameter< double >::type min_im(min_imSEXP);
    Rcpp::traits::input_parameter< double >::type max_range(max_rangeSEXP);
    Rcpp::traits::input_parameter< double >::type min_range(min_rangeSEXP);
    rcpp_result_gen = Rcpp::wrap(saturateim(data, max_im, min_im, max_range, min_range));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_imagerExtra_DCTdenoising", (DL_FUNC) &_imagerExtra_DCTdenoising, 5},
    {"_imagerExtra_DCT2D_reorder", (DL_FUNC) &_imagerExtra_DCT2D_reorder, 1},
    {"_imagerExtra_DCT2D_fromDFT", (DL_FUNC) &_imagerExtra_DCT2D_fromDFT, 1},
    {"_imagerExtra_IDCT2D_toDFT", (DL_FUNC) &_imagerExtra_IDCT2D_toDFT, 1},
    {"_imagerExtra_IDCT2D_retrievex", (DL_FUNC) &_imagerExtra_IDCT2D_retrievex, 1},
    {"_imagerExtra_make_prob_otsu", (DL_FUNC) &_imagerExtra_make_prob_otsu, 5},
    {"_imagerExtra_get_th_otsu", (DL_FUNC) &_imagerExtra_get_th_otsu, 2},
    {"_imagerExtra_threshold_adaptive", (DL_FUNC) &_imagerExtra_threshold_adaptive, 4},
    {"_imagerExtra_piecewise_transformation", (DL_FUNC) &_imagerExtra_piecewise_transformation, 9},
    {"_imagerExtra_screened_poisson_dct", (DL_FUNC) &_imagerExtra_screened_poisson_dct, 2},
    {"_imagerExtra_saturateim", (DL_FUNC) &_imagerExtra_saturateim, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_imagerExtra(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
