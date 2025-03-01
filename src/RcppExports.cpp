// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// splitLine_cpp
std::string splitLine_cpp(std::string str, int max_width, bool use_hyphening, Rcpp::Function hyphen);
RcppExport SEXP _pander_splitLine_cpp(SEXP strSEXP, SEXP max_widthSEXP, SEXP use_hypheningSEXP, SEXP hyphenSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::string >::type str(strSEXP);
    Rcpp::traits::input_parameter< int >::type max_width(max_widthSEXP);
    Rcpp::traits::input_parameter< bool >::type use_hyphening(use_hypheningSEXP);
    Rcpp::traits::input_parameter< Rcpp::Function >::type hyphen(hyphenSEXP);
    rcpp_result_gen = Rcpp::wrap(splitLine_cpp(str, max_width, use_hyphening, hyphen));
    return rcpp_result_gen;
END_RCPP
}
// tableExpand_cpp
std::string tableExpand_cpp(CharacterVector cells, IntegerVector colsWidth, CharacterVector justify, CharacterVector sepCols, std::string style);
RcppExport SEXP _pander_tableExpand_cpp(SEXP cellsSEXP, SEXP colsWidthSEXP, SEXP justifySEXP, SEXP sepColsSEXP, SEXP styleSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterVector >::type cells(cellsSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type colsWidth(colsWidthSEXP);
    Rcpp::traits::input_parameter< CharacterVector >::type justify(justifySEXP);
    Rcpp::traits::input_parameter< CharacterVector >::type sepCols(sepColsSEXP);
    Rcpp::traits::input_parameter< std::string >::type style(styleSEXP);
    rcpp_result_gen = Rcpp::wrap(tableExpand_cpp(cells, colsWidth, justify, sepCols, style));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_pander_splitLine_cpp", (DL_FUNC) &_pander_splitLine_cpp, 4},
    {"_pander_tableExpand_cpp", (DL_FUNC) &_pander_tableExpand_cpp, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_pander(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
