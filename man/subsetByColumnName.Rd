% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dfmat.R
\name{subsetByColumnName}
\alias{subsetByColumnName}
\title{Subset a data.frame by column name, allowing differences in cases}
\usage{
subsetByColumnName(data.frame, reqCols, ignore.case = FALSE)
}
\arguments{
\item{data.frame}{A data.frame object}

\item{reqCols}{required columns}

\item{ignore.case}{logical, whether the case is considered}
}
\value{
If all required column names are present, the data.frame object will
be subset to include only these columns and the result data.frame is
returned. Otherwise an error message is printed.
}
\description{
The function calls \code{\link{assertColumnName}} internally to match the
column names.
}
\examples{

myTestDf <- data.frame(HBV=1:3, VFB=0:2, BVB=4:6, FCB=2:4)
myFavTeams <- c("HBV", "BVB")
subsetByColumnName(myTestDf, myFavTeams)
myFavTeamsCase <- c("hbv", "bVb")
subsetByColumnName(myTestDf, myFavTeamsCase, ignore.case=TRUE)

}
