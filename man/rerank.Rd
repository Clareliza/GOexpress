\name{rerank}
\alias{rerank}
\title{
Reorder the result variable by alternative metrics.
}
\description{
Reorder the ranked tables of GO terms and genes either by increasing
(average) rank or decreasing (average) score.
}
\usage{
rerank(result, rank.by = "rank")
}
\arguments{
  \item{result}{
The output of \code{GO_analyse()} or a subset of it obtained from \code{subset_scores()}.
}
  \item{rank.by}{
Either of "rank" or "score"; the metric to rank the GO terms and genes by.
}
}
\value{
A list formatted identically to the results of the analysis, but ordered
by the chosen metric.
}
\author{
Kevin Rue-Albrecht
}
\note{
Name reorder() was not used to avoid conflict with package \code{stats}.
}
\seealso{
  \href{https://github.com/kevinrue/GOexpress/wiki/Typical-analysis-pipeline}{Tutorial} on GitHub..
}
\examples{
# load the sample output data
data(raw_result)

# Re-rank the GO terms and genes based on the actual score instead of the rank
raw_reranked = rerank(result=raw_result, rank.by="score")
}

\keyword{ GOexpress }