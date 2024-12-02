## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include = FALSE----------------------------------------------------------
library(orthGS)

## -----------------------------------------------------------------------------
maize_ara <- subsetGS(c("Zea mays", "Arabidopsis thaliana"))

## -----------------------------------------------------------------------------
# aln <- msa(sequences = maize_ara$prot, ids = maize_ara$phylo_id)
# a <- aln$ali
# rownames(a) <-  maize_ara$phylo_id
# tr <- mltree(a)$tree
# plot(phangorn::midpoint(tr), cex = 0.7)

## ----eval=FALSE, include=TRUE-------------------------------------------------
# orthG(c("Zea mays", "Arabidopsis thaliana"))

## ----eval=FALSE, include=TRUE-------------------------------------------------
# orthG(c("Zea mays", "Arabidopsis thaliana", "Oryza sativa"))

## ----eval=FALSE, include=TRUE-------------------------------------------------
# x <- orthP(phylo_id = "Zm_GS1b_4", set = "all")
# plot(x[[1]], tip.color = x[[2]], cex = 0.7)

## -----------------------------------------------------------------------------
speciesGS(c("Atr", "Sly", "Osa"))

