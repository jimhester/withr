% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sink.R
\name{with_sink}
\alias{with_sink}
\alias{with_output_sink}
\alias{local_output_sink}
\alias{with_message_sink}
\alias{local_message_sink}
\title{Output redirection}
\usage{
with_output_sink(new, code, append = FALSE, split = FALSE)

local_output_sink(
  new = list(),
  append = FALSE,
  split = FALSE,
  .local_envir = parent.frame()
)

with_message_sink(new, code, append = FALSE)

local_message_sink(new = list(), append = FALSE, .local_envir = parent.frame())
}
\arguments{
\item{new}{\verb{[character(1)|connection]}\cr
A writable \link{connection} or a character string naming the file to write
to. Passing \code{NULL} will throw an error.}

\item{code}{\code{[any]}\cr Code to execute in the temporary environment}

\item{append}{logical.  If \code{TRUE}, output will be appended to
    \code{file}; otherwise, it will overwrite the contents of
    \code{file}.}

\item{split}{logical: if \code{TRUE}, output will be sent to the new
    sink and to the current output stream, like the Unix program \code{tee}.}

\item{.local_envir}{\verb{[environment]}\cr The environment to use for scoping.}
}
\value{
\code{[any]}\cr The results of the evaluation of the \code{code}
argument.
}
\description{
Temporarily divert output to a file via \code{\link[=sink]{sink()}}.  For
sinks of type \code{message}, an error is raised if such a sink is already
active.
}
\seealso{
\code{\link{withr}} for examples

\code{\link[=sink]{sink()}}
}
