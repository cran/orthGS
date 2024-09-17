## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include = FALSE----------------------------------------------------------
library(orthGS)

## ----eval=FALSE, include=TRUE-------------------------------------------------
#  # Plot species tree:
#  str <- ape::read.tree(text = "((((Pa,Psm),(Pp,Pin)),(Abi,Ap)),((Ara,(Pod,Nag)),(Sci,(Tba,Tax))));")
#  plot(str)
#  # Load GS sequence data:
#  agf <- agf
#  # Aligning sequences and building an unrooted tree
#  # (remember you need the MUSCLE software in your path):
#  conif <- agf[which(agf$short %in% str$tip.label), ]
#  ptr <- mltree(msa(sequences = conif$prot,
#                    ids = conif$phylo_id,
#                    inhouse = TRUE)$ali)$tree
#  # Rooting and plotting an ultrametric tree :
#  ptr <- madRoot(ptr)
#  plot(ptr, use.edge.length = FALSE, cex = 0.6)

## -----------------------------------------------------------------------------
data <- subsetGS(sp = c("Ap", "Abi", "Pin", "Pp", "Psm", "Pa"))[, 2:9]
data$phylo_id

## ----eval=FALSE, include=TRUE-------------------------------------------------
#  o <- orthG(set = c("Ap", "Abi", "Pin", "Pp", "Psm", "Pa"))
#  A <- o[[1]] # Adjacency matrix
#  g <- o[[2]] # igraph object (orthology network)

## ----include=FALSE------------------------------------------------------------
g <- orthG(set = c("Ap", "Abi", "Pin", "Pp", "Psm", "Pa"))[[2]] 

## ----eval = FALSE-------------------------------------------------------------
#  gs1a <- data$phylo[grepl("GS1a", data$phylo_id)] # selected nodes
#  plot(igraph::subgraph(g, vids = gs1a))

## ----eval=FALSE, include=TRUE-------------------------------------------------
#  data <- sdf
#  gs1a <- data[which(data$gs == "GS1a" & data$tax_group != "Ferns"), ]

## ----eval = FALSE, include = TRUE---------------------------------------------
#  o <- orthG()
#  g <- o[[2]]
#  plot(igraph::subgraph(g, vids = gs1a$Sec.Name_))

