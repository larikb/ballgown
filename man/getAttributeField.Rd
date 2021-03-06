\name{getAttributeField}
\alias{getAttributeField}
\title{extract a specific field of the "attributes" column of a data frame created from a GTF/GFF file}
\usage{
getAttributeField(x, field, attrsep = "; ")
}
\arguments{
  \item{x}{vector representing the "attributes" column of
  GTF/GFF file}

  \item{field}{name of the field you want to extract from
  the "attributes" column}

  \item{attrsep}{separator for the fields in the attributes
  column.  Defaults to '; ', the separator for GTF files
  outputted by Cufflinks.}
}
\value{
vector of nucleotide positions included in the transcript
}
\description{
extract a specific field of the "attributes" column of a
data frame created from a GTF/GFF file
}
\examples{
## not run:
gffdata = gffRead('transcripts.gtf')
transcriptID = getAttributeField(gffdata$V9, field = "transcript_id")
gffdata$transcriptID = transcriptID
}
\author{
Wolfgang Huber, in \code{davidTiling}
}
\seealso{
\code{\link{gffRead}} for creating a data frame from a
GTF/GFF file, and
\link{http://useast.ensembl.org/info/website/upload/gff.html}
for specifics of the GFF/GTF file format.
}

