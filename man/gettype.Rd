\name{gettype}
\alias{gettype}
\title{extract type of expression measurement from column names of expression tables}
\usage{
gettype(x)
}
\arguments{
  \item{x}{column name from which measurement type should
  be extracted}
}
\value{
measurement type (e.g., \code{'FPKM'} or \code{'rcov'})
}
\description{
extract type of expression measurement from column names of
expression tables
}
\details{
Mostly an internal function, but we imagine it could be
useful to users as well, so we export it.  It returns the
last section of a string, where sections are delimited by
'.' -- this is useful in ballgown columns of the
\code{texpr}, \code{eexpr}, \code{iexpr}, and \code{gexpr}
tables are named using the scheme
\code{<MEASUREMENT>.<SAMPLENAME>}.
}
\author{
Alyssa Frazee
}

