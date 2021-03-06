% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sort.R
\name{stri_sort}
\alias{stri_sort}
\title{Sorting}
\usage{
stri_sort(str, decreasing = FALSE, na_last = NA, ..., opts_collator = NULL)
}
\arguments{
\item{str}{a character vector}

\item{decreasing}{a single logical value; should the sort order
be nondecreasing (\code{FALSE}, default, i.e., weakly increasing)
or nonincreasing (\code{TRUE})?}

\item{na_last}{a single logical value; controls the treatment of \code{NA}s
in \code{str}. If \code{TRUE}, then missing values in \code{str} are put
at the end; if \code{FALSE}, they are put at the beginning;
if \code{NA}, then they are removed from the output}

\item{...}{additional settings for \code{opts_collator}}

\item{opts_collator}{a named list with \pkg{ICU} Collator's options,
see \code{\link{stri_opts_collator}}, \code{NULL}
for default collation options}
}
\value{
The result is a sorted version of \code{str},
i.e., a character vector.
}
\description{
The function sorts a character vector according to the locale-dependent
lexicographic order.
}
\details{
For more information on \pkg{ICU}'s Collator and how to tune it up
in \pkg{stringi}, refer to \code{\link{stri_opts_collator}}.

As usual in \pkg{stringi}, non-character inputs are coerced to strings,
see an example below for a perhaps non-intitive behavior of lexicographic
sorting on numeric inputs.

This function uses a stable sort algorithm (\pkg{STL}'s \code{stable_sort}),
which performs up to \eqn{N*log^2(N)} element comparisons,
where \eqn{N} is the length of \code{str}.
}
\examples{
stri_sort(c("hladny", "chladny"), locale="pl_PL")
stri_sort(c("hladny", "chladny"), locale="sk_SK")
stri_sort(sample(LETTERS))
stri_sort(c(1, 100, 2, 101, 11, 10))
stri_sort(c(1, 100, 2, 101, 11, 10), numeric=TRUE)
}
\references{
\emph{Collation} - ICU User Guide,
\url{http://userguide.icu-project.org/collation}
}
\seealso{
Other locale_sensitive: 
\code{\link{\%s<\%}()},
\code{\link{stri_compare}()},
\code{\link{stri_count_boundaries}()},
\code{\link{stri_duplicated}()},
\code{\link{stri_enc_detect2}()},
\code{\link{stri_extract_all_boundaries}()},
\code{\link{stri_locate_all_boundaries}()},
\code{\link{stri_opts_collator}()},
\code{\link{stri_order}()},
\code{\link{stri_split_boundaries}()},
\code{\link{stri_trans_tolower}()},
\code{\link{stri_unique}()},
\code{\link{stri_wrap}()},
\code{\link{stringi-locale}},
\code{\link{stringi-search-boundaries}},
\code{\link{stringi-search-coll}}
}
\concept{locale_sensitive}
