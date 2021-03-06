% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jaccardIndex.R
\name{listOverlapCoefficient}
\alias{listOverlapCoefficient}
\title{Pairwise overlap coefficient of lists}
\usage{
listOverlapCoefficient(x, y = NULL, checkUniqueNonNA = TRUE)
}
\arguments{
\item{x}{A list of vectors that are interpreted as sets of elements}

\item{y}{A list of vectors that are interpreted as sets of elements. In case of \code{NULL},
pairwise overlap coefficient of lists in \code{x} is returned.}

\item{checkUniqueNonNA}{Logical, should vectors in the list be first cleaned up so that NA values
are removed and the elements are made unique? Default is set as \code{TRUE}; if the user is 
confident that the vectors are indeed valid sets, this option can be set as \code{FALSE} to speed
up the code}
}
\value{
A matrix of column-wise pairwise overlap coefficients.
}
\description{
Pairwise overlap coefficient of lists
}
\examples{
set.seed(1887)
testSets1 <- sapply(rbinom(10, size=26, prob=0.3), 
  function(x) sample(LETTERS, x, replace=FALSE))
names(testSets1) <- sprintf("List\%d", seq(along=testSets1))
testSets1Poe <- listOverlapCoefficient(testSets1)
testSets1PoeNoCheck <- listOverlapCoefficient(testSets1, checkUniqueNonNA=FALSE)
stopifnot(identical(testSets1Poe, testSets1PoeNoCheck))

testSets2 <- sapply(rbinom(15, size=26, prob=0.3),
  function(x) sample(LETTERS, x, replace=FALSE))
names(testSets2) <- sprintf("AnotherList\%d", seq(along=testSets2))
testSets12Poe <- listOverlapCoefficient(testSets1, testSets2)

}
