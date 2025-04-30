## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include = FALSE----------------------------------------------------------
library(orthGS)

## -----------------------------------------------------------------------------
plot(ape::read.tree(text = "(Sp1,(Sp2,(Sp3,Sp4)));"))

## -----------------------------------------------------------------------------
plot(ape::read.tree(text = "(Sp1_A,(Sp3_A,(Sp2_A,Sp4_A)));"))

## ----eval=FALSE---------------------------------------------------------------
# results <- orthology(trees = system.file("extdata", "input.trees", package = "orthGS"),
#                      invoke = "Ranger-DTL.mac", plot = FALSE)

## ----eval=FALSE---------------------------------------------------------------
# tr <- results[[1]]
# for (i in 1:length(tr$node.label)){
#   if (tr$node.label[i] == ""){tr$node.label[i] <- "S"}
# }
# plot(tr)
# ape::nodelabels(text = tr$node.label)

## ----eval=FALSE---------------------------------------------------------------
# g <- results[[4]]
# plot(g)

## ----eval=FALSE---------------------------------------------------------------
# script_path <- system.file("python", "ranger_to_recXML.py", package = "orthGS")
# path2rec <- system.file("extdata", "MyRec", package = "orthGS")
# cmd <- paste("python3.11 ", script_path, " -i ", path2rec, " -o ./MyRec.xml", sep = "")

## ----eval=FALSE---------------------------------------------------------------
# input <- system.file("extdata", "MyRec.xml", package = "orthGS")
# output <- "./toyEx.svg"
# cmd <- paste("thirdkind -f ", input, " -o ", output, sep = "")
# system(cmd)

