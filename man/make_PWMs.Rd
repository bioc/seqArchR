% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_sinuc_PWMs.R
\name{make_PWMs}
\alias{make_PWMs}
\title{Make a PWM-resembling matrix out of a given n-vector}
\usage{
make_PWMs(vec, add_pseudo_counts = TRUE, scale = TRUE, sinuc = TRUE)
}
\arguments{
\item{vec}{A vector that will be reshaped into a PWM matrix of DNA
sequences. Note that the matrix is formed by row.}

\item{add_pseudo_counts}{Logical, taking values TRUE or FALSE, specifying
whether or not pseudocounts are added to the matrix.}

\item{scale}{Logical, taking values TRUE or FALSE, specifying whether or
not the matrix is scaled column-wise, i.e., all columns summed to 1.}

\item{sinuc}{Logical. Specify TRUE for mononucleotides (default), FALSE to
for dinucleotides.}
}
\value{
A PWM. If sinuc is `TRUE`, the PWM has 4 rows corresponding to the
4 nucleotides (A, C, G, T) and the relevant number of columns (i.e.,
number of elements in given vector/4).
If dinucleotide is selected, by setting `sinuc` to `FALSE`, the PWM has
16 rows corresponding to the dinucleotide combinations of the four
nucleotides (A, C, G, T) and the relevant number of columns (i.e.,
number of elements in given vector/16).
}
\description{
The given matrix (or simply a vector) is reshaped to have four
rows for four nucleotides and a relevant number of columns.
}
\examples{

## Mononucleotides case
## Make a dummy PWM of dimensions 4 * 10 from a vector
vec <- runif(4*10)
pwm <- seqArchR::make_PWMs(vec = vec, add_pseudo_counts = FALSE)

## Dinucleotides case
res <- readRDS(system.file("extdata", "example_seqArchRresult.rds",
         package = "seqArchR", mustWork = TRUE))

pwm <- seqArchR::make_PWMs(get_clBasVec_m(res,iter=1)[,1],
                        add_pseudo_counts = FALSE, sinuc = FALSE)

}
