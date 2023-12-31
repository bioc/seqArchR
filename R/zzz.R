sklearn <- NULL
.onLoad <- function(libname, pkgname) {

    #
    # CMD check NOTE avoidance See: https://stackoverflow.com/a/12429344
    # Example:
    # https://github.com/HughParsonage/grattan/blob/master/R/zzz.R
    if (getRversion() >= "2.15.1") {
        utils::globalVariables(
            c(
                "Nucleotides",
                "X",
                "cvfolds",
                "perform_nmf_func",
                "positions",
                "q2_vals",
                "rel_var",
                "value",
                "k_vals",
                "fold",
                "iteration"
            )
        )
    }
}
