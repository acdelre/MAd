\name{plotcat}
\alias{plotcat}
\title{Categorical Moderator Graph
}
\description{ Outputs boxplot graphic for each level of the specified moderator. 
}
\usage{
plotcat(g, var, mod, data, modname=NULL,  title=NULL, ...)
}
\arguments{
 \item{g}{Hedges g (unbiased estimate of d) effect size.
}
\item{var}{Vaiance of g.
}
  \item{mod}{Categorical moderator variable used for moderator analysis.
} 
 
\item{data}{\code{data.frame} with values above.
}
  \item{modname}{Name of moderator to appear on x axis of plot. Default is NULL.
}
  \item{title}{Plot title. Default is NULL.
}
\item{...}{ Additional arguments to be passed to ggplot.
  } 
}
\value{ Boxplot graph with median, max, min, and outliers from a fixed or random effects categorical moderator analysis. Places jitter points (for each study) on the boxplots. The size of each point (representing a study in the analysis) are based on study weights where more precise studies have larger points. The ggplot2 package outputs the graphics.
}
\references{ Cooper, H., Hedges, L.V., & Valentine, J.C. (2009). \emph{The handbook of research synthesis and meta-analysis} (2nd edition). New York: Russell Sage Foundation. 
}
\author{AC Del Re & William T. Hoyt

Maintainer: AC Del Re \email{acdelre@gmail.com}
}
\seealso{
\code{\link{macat}},
\code{\link{plotcon}}
}
\examples{
id<-c(1, 1:19)
n.1<-c(10,20,13,22,28,12,12,36,19,12,36,75,33,121,37,14,40,16,14,20)
n.2 <- c(11,22,10,20,25,12,12,36,19,11,34,75,33,120,37,14,40,16,10,21)
g <- c(.68,.56,.23,.64,.49,-.04,1.49,1.33,.58,1.18,-.11,1.27,.26,.40,.49,
.51,.40,.34,.42,1.16)
var.g <- c(.08,.06,.03,.04,.09,.04,.009,.033,.0058,.018,.011,.027,.026,.0040,
.049,.0051,.040,.034,.0042,.016)
mod<-factor(c(rep(c(1,1,2,3),5)))
df<-data.frame(id, n.1,n.2, g, var.g,mod)

# Example

\dontrun{plotcat(g = g, var = var.g, mod = mod, data = df, method= "random",
 modname= "Moderator") }
}   
\keyword{aplot}

