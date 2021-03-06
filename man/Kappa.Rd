\name{Kappa}
\alias{Kappa}
\title{Inter-Rater Agreement
}
\description{Kappa coefficients for assessing inter-rater agreement between two coders (for categorical \cr
variables/moderators).
}
\usage{
Kappa(rater1, rater2)
}
\arguments{
  \item{rater1}{First rater of categorical variable to be analyzed. This vector needs to be in a separate column if in a \code{data.frame}.
}
  \item{rater2}{Second rater on same categorical variable to be analyzed. This vector needs to be in a separate column if in a \code{data.frame}.
}
}
\value{Kappa coefficients for inter-rater reliability (categorical variables).
}
\author{AC Del Re & William T. Hoyt

Maintainer: AC Del Re \email{acdelre@gmail.com}
}
\examples{
# sample data

study <- c(1,1,2,2,3,3) # study coded
rater <- rep(1:2, 3)  # 2 raters
mod1 <- as.factor(round(rnorm(6, 10, 1))) # values coded for mod 1
mod2 <- as.factor(round(rnorm(6, 10, 1)))
mod3 <- as.factor(round(rnorm(6, 10, 1)))
mod4 <- as.factor(round(rnorm(6, 10, 1)))
mod5 <- as.factor(round(rnorm(6, 10, 1)))
mod6 <- as.factor(round(rnorm(6, 10, 1)))
w <-data.frame(study, rater,mod1, mod2, mod3, mod4, mod5, mod6)
w

# if data is in this format:
# study rater mod1 mod2 mod3 mod4 mod5 mod6
#     1     1    8   10    9    9   10   10
#     1     2   10   11   10   10   13   12
#     2     1   11   10   11   11   10   12
#     2     2   13   10   10   11   12    9
#     3     1   11   10   11   10   10    9
#     3     2   10   10   11    9   10   11
#
# the data will need to be reshaped to be processed by the 
# Kappa function:

long <- reshape(w, varying=colnames(w)[3:8], v.names="code", 
            idvar=c('study', 'rater'), timevar= 'mods', direction='long')
wide <- reshape(long, idvar=c('mods', 'study'), timevar='rater')
wide

# running the function:

Kappa(wide$code.1, wide$code.2)
}

