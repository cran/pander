% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pandoc.R
\name{pandoc.table.return}
\alias{pandoc.table.return}
\alias{pandoc.table}
\title{Create a table}
\usage{
pandoc.table.return(t, caption, digits = panderOptions("digits"),
  decimal.mark = panderOptions("decimal.mark"),
  big.mark = panderOptions("big.mark"), round = panderOptions("round"),
  missing = panderOptions("missing"), justify, style = c("multiline",
  "grid", "simple", "rmarkdown", "jira"),
  split.tables = panderOptions("table.split.table"),
  split.cells = panderOptions("table.split.cells"),
  keep.trailing.zeros = panderOptions("keep.trailing.zeros"),
  keep.line.breaks = panderOptions("keep.line.breaks"),
  plain.ascii = panderOptions("plain.ascii"),
  use.hyphening = panderOptions("use.hyphening"), row.names, col.names,
  emphasize.rownames = panderOptions("table.emphasize.rownames"),
  emphasize.rows, emphasize.cols, emphasize.cells, emphasize.strong.rows,
  emphasize.strong.cols, emphasize.strong.cells, emphasize.italics.rows,
  emphasize.italics.cols, emphasize.italics.cells, emphasize.verbatim.rows,
  emphasize.verbatim.cols, emphasize.verbatim.cells, ...)
}
\arguments{
\item{t}{data frame, matrix or table}

\item{caption}{caption (string) to be shown under the table}

\item{digits}{passed to \code{format}. Can be a vector specifying values for each column (has to be the same length as number of columns).}

\item{decimal.mark}{passed to \code{format}}

\item{big.mark}{passed to \code{format}}

\item{round}{passed to \code{round}. Can be a vector specifying values for each column (has to be the same length as number of columns). Values for non-numeric columns will be disregarded.}

\item{missing}{string to replace missing values}

\item{justify}{defines alignment in cells passed to \code{format}. Can be \code{left}, \code{right} or \code{centre}, which latter can be also spelled as \code{center}. Defaults to \code{centre}. Can be abbreviated to a string consisting of the letters \code{l}, \code{c} and \code{r} (e.g. 'lcr' instead of c('left', 'centre', 'right').}

\item{style}{which Pandoc style to use: \code{simple}, \code{multiline}, \code{grid} or \code{rmarkdown}}

\item{split.tables}{where to split wide tables to separate tables. The default value (\code{80}) suggests the conventional number of characters used in a line, feel free to change (e.g. to \code{Inf} to disable this feature) if you are not using a VT100 terminal any more :)}

\item{split.cells}{where to split cells' text with line breaks. Default to \code{30}, to disable set to \code{Inf}. Can be also supplied as a vector, for each cell separately (if length(split.cells) == number of columns + 1, then first value in split.cells if for row names, and others are for columns). Supports relative (percentage) parameters in combination with split.tables.}

\item{keep.trailing.zeros}{to show or remove trailing zeros in numbers on a column basis width}

\item{keep.line.breaks}{(default: \code{FALSE}) if to keep or remove line breaks from cells in a table}

\item{plain.ascii}{(default: \code{FALSE}) if output should be in plain ascii (without markdown markup) or not}

\item{use.hyphening}{boolean (default: \code{FALSE}) if try to use hyphening when splitting large cells according to table.split.cells. Requires \pkg{sylly}.}

\item{row.names}{if \code{FALSE}, row names are suppressed. A character vector of row names can also be specified here. By default, row names are included if \code{rownames(t)} is neither
\code{NULL} nor identical to \code{1:nrow(x)}}

\item{col.names}{a character vector of column names to be used in the table}

\item{emphasize.rownames}{boolean (default: \code{TRUE}) if row names should be highlighted}

\item{emphasize.rows}{deprecated for \code{emphasize.italics.rows} argument}

\item{emphasize.cols}{deprecated for \code{emphasize.italics.cols} argument}

\item{emphasize.cells}{deprecated for \code{emphasize.italics.cells} argument}

\item{emphasize.strong.rows}{see \code{emphasize.italics.rows} but in bold}

\item{emphasize.strong.cols}{see \code{emphasize.italics.cols} but in bold}

\item{emphasize.strong.cells}{see \code{emphasize.italics.cells} but in bold}

\item{emphasize.italics.rows}{a vector for a two dimensional table specifying which rows to emphasize}

\item{emphasize.italics.cols}{a vector for a two dimensional table specifying which cols to emphasize}

\item{emphasize.italics.cells}{a vector for one-dimensional tables or a matrix like structure with two columns for row and column indexes to be emphasized in two dimensional tables. See e.g. \code{which(..., arr.ind = TRUE)}}

\item{emphasize.verbatim.rows}{see \code{emphasize.italics.rows} but in verbatim}

\item{emphasize.verbatim.cols}{see \code{emphasize.italics.cols} but in verbatim}

\item{emphasize.verbatim.cells}{see \code{emphasize.italics.cells} but in verbatim}

\item{...}{unsupported extra arguments directly placed into \code{/dev/null}}
}
\value{
By default this function outputs (see: \code{cat}) the result. If you would want to catch the result instead, then call \code{pandoc.table.return} instead.
}
\description{
Creates a Pandoc's markdown style table with optional caption and some other tweaks. See 'Details' below.
}
\details{
This function takes any tabular data as its first argument and will try to make it pretty like: rounding and applying \code{digits} and custom \code{decimal.mark} to numbers, auto-recognizing if row names should be included, setting alignment of cells and dropping trailing zeros by default.

\code{pandoc.table} also tries to split large cells with line breaks or even the whole table to separate parts on demand. Other arguments lets the use to highlight some rows/cells/cells in the table with italic or bold text style.

For more details please see the parameters above and passed arguments of \code{\link{panderOptions}}.
}
\note{
If \code{caption} is missing, then the value is first checked in \code{t} object's \code{caption} attribute and if not found in an internal buffer set by \code{link{set.caption}}. \code{justify} parameter works similarly, see \code{\link{set.alignment}} for details.
}
\examples{
pandoc.table(mtcars)

# caption
pandoc.table(mtcars, 'Motor Trend Car Road Tests')

# other input/output formats
pandoc.table(mtcars[, 1:3], decimal.mark = ',')
pandoc.table(mtcars[, 1:3], decimal.mark = ',', justify = 'right')
pandoc.table(matrix(sample(1:1000, 25), 5, 5))
pandoc.table(matrix(runif(25), 5, 5))
pandoc.table(matrix(runif(25), 5, 5), digits = 5)
pandoc.table(matrix(runif(25),5,5), round = 1)
pandoc.table(table(mtcars$am))
pandoc.table(table(mtcars$am, mtcars$gear))
pandoc.table(table(state.division, state.region))
pandoc.table(table(state.division, state.region), justify = 'centre')

m <- data.frame(a = c(1, -500, 10320, 23, 77),
  b = runif(5),
  c = c('a', 'bb', 'ccc', 'dddd', 'eeeee'))
pandoc.table(m)
pandoc.table(m, justify = c('right', 'left', 'centre'))
pandoc.table(m, justify = 'rlc') # Same as upper statement

## splitting up too wide tables
pandoc.table(mtcars)
pandoc.table(mtcars, caption = 'Only once after the first part!')

## tables with line breaks in cells
## NOTE: line breaks are removed from table content in case keep.line.breaks is set to FALSE
## and added automatically based on "split.cells" parameter!
t <- data.frame(a = c('hundreds\\nof\\nmouses', '3 cats'), b=c('FOO is nice', 'BAR\\nBAR2'))
pandoc.table(t)
pandoc.table(t, split.cells = 5)

## exporting tables in other Pandoc styles
pandoc.table(m)
pandoc.table(m, style = "grid")
pandoc.table(m, style = "simple")
pandoc.table(t, style = "grid")
pandoc.table(t, style = "grid", split.cells = 5)
tryCatch(pandoc.table(t, style = "simple", split.cells = 5),
  error = function(e) 'Yeah, no newline support in simple tables')

## highlight cells
t <- mtcars[1:3, 1:5]
pandoc.table(t$mpg, emphasize.italics.cells = 1)
pandoc.table(t$mpg, emphasize.strong.cells = 1)
pandoc.table(t$mpg, emphasize.italics.cells = 1, emphasize.strong.cells = 1)
pandoc.table(t$mpg, emphasize.italics.cells = 1:2)
pandoc.table(t$mpg, emphasize.strong.cells = 1:2)
pandoc.table(t, emphasize.italics.cells = which(t > 20, arr.ind = TRUE))
pandoc.table(t, emphasize.italics.cells = which(t == 6, arr.ind = TRUE))
pandoc.table(t, emphasize.verbatim.cells = which(t == 6, arr.ind = TRUE))
pandoc.table(t, emphasize.verbatim.cells = which(t == 6, arr.ind = TRUE),
 emphasize.italics.rows = 1)
## with helpers
emphasize.cols(1)
emphasize.rows(1)
pandoc.table(t)

emphasize.strong.cells(which(t > 20, arr.ind = TRUE))
pandoc.table(t)

### plain.ascii
pandoc.table(mtcars[1:3, 1:3], plain.ascii = TRUE)

### keep.line.breaks
x <- data.frame(a="Pandoc\\nPackage")
pandoc.table(x)
pandoc.table(x, keep.line.breaks = TRUE)

## split.cells
x <- data.frame(a = "foo bar", b = "foo bar")
pandoc.table(x, split.cells = 4)
pandoc.table(x, split.cells = 7)
pandoc.table(x, split.cells = c(4, 7))
pandoc.table(x, split.cells = c("20\%", "80\%"), split.tables = 30)

y <- c("aa aa aa", "aaa aaa", "a a a a a", "aaaaa", "bbbb bbbb bbbb", "bb bbb bbbb")
y <- matrix(y, ncol = 3, nrow = 2)
rownames(y) <- c("rowname one", "rowname two")
colnames(y) <- c("colname one", "colname two", "colname three")
pandoc.table(y, split.cells = 2)
pandoc.table(y, split.cells = 6)
pandoc.table(y, split.cells = c(2, 6, 10))
pandoc.table(y, split.cells = c(2, Inf, Inf))

## first value used for rownames
pander(y, split.cells = c(5, 2, Inf, Inf))
pandoc.table(y, split.cells = c(5, 2, Inf, 5, 3, 10))

## when not enough reverting to default values
pandoc.table(y, split.cells = c(5, 2))

## split.cells with hyphenation
x <- data.frame(a = "Can be also supplied as a vector, for each cell separately",
       b = "Can be also supplied as a vector, for each cell separately")
pandoc.table(x, split.cells = 10, use.hyphening = TRUE)
}
\references{
John MacFarlane (2012): _Pandoc User's Guide_. \url{http://johnmacfarlane.net/pandoc/README.html}
}
\seealso{
\code{\link{set.caption}}, \code{\link{set.alignment}}
}
