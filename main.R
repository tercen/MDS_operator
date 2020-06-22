library(tercen)
library(dplyr)

do.mds <- function(df) {
  
  dist.mat <- as.dist(df)
  
  out <- data.frame(
    .ci = seq_len(dim(df)[1]) - 1,
    mds_1 = NaN,
    mds_2 = NaN
  )
  
  fit <- cmdscale(dist.mat, eig = TRUE, k = 2)
  
  out$mds_1 <- fit$points[,1]
  out$mds_2 <- fit$points[,2]
  
  return(out)
}

(ctx = tercenCtx())  %>%
  select(.y, .ci, .ri) %>%
  reshape2::acast(.ci ~ .ri, value.var = '.y', fun.aggregate = mean) %>%
  do.mds() %>%
  as_tibble() %>%
  ctx$addNamespace() %>%
  ctx$save()
