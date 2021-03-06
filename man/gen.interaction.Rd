% Generated by roxygen2 (4.0.2): do not edit by hand
\name{gen.interaction}
\alias{gen.interaction}
\title{Generates interaction variables for the specified columns}
\usage{
gen.interaction(df, interaction.vars = names(df), return.all = FALSE)
}
\arguments{
\item{df}{The incoming data frame}

\item{interaction.vars}{Optional. Defaults to the names of the data frame columns. The names of the variables for which to generate the interactions.}

\item{return.all}{Optional. Defaults to FALSE. If true, the functon returns all of the columns in the data frame, including the interactions. If false, the function only returns the interaction columns.}
}
\value{
A new data frame with either all of the columns, or just the new interaction columns (depending on vale of return.all parameter).
}
\description{
Generates interaction variables for the specified columns
}
\examples{
df <- data.frame(matrix(rnorm(100), nrow = 10))
df <- cbind(df, rep('A', nrow(df)))
df[1,1] <- NA
gen.interaction(df)
gen.interaction(df, interaction.vars = c("X1", "X2"))
gen.interaction(df, interaction.vars = c("X1", "X2"), return.all = TRUE)
}

