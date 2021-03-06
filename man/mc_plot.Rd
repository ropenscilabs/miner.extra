% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mc_plot.R
\name{mc_plot}
\alias{mc_plot}
\title{Scatterplot within Minecraft}
\usage{
mc_plot(
  lowerleft = miner::getPlayerPos() + c(0, 5, 5),
  x,
  y,
  xlab = "x",
  ylab = "y",
  group = NULL,
  width = 120,
  height = 120,
  dir = c("east", "west", "north", "south", "up", "down"),
  top = c("up", "north", "south", "east", "west", "down"),
  block_colors = list(gray = c(35, 8), white = c(35, 0), black = c(35, 15), colors =
    cbind(35, c(9, 14, 5)))
)
}
\arguments{
\item{lowerleft}{Vector of length 3, specifying the position of the lower-left corner of the plot.}

\item{x}{Vector of x values}

\item{y}{Vector of y values}

\item{xlab}{x-axis label}

\item{ylab}{y-axis label}

\item{group}{Vector of groups for coloring the points}

\item{width}{Width of plot in blocks}

\item{height}{Height of plot in blocks}

\item{dir}{Direction the plot will go}

\item{top}{Direction for the top of the plot}

\item{block_colors}{A list of block IDs and styles to denote the colors to be used; needs to contain
\code{"gray"}, \code{"white"}, \code{"black"}, and \code{"colors"}.}
}
\value{
Returns the input \code{lowerleft}.
}
\description{
Make a scatterplot within Minecraft
}
\examples{
\dontrun{
v <- mc_plot(getPlayerPos()+c(0, 5, 5),
             x=iris$Sepal.Length, y=iris$Sepal.Width,
             group=iris$Species,
             xlab="Sepal.Length", ylab="Sepal.Width")
}

}
\seealso{
\code{\link[=mc_clearplot]{mc_clearplot()}}
}
