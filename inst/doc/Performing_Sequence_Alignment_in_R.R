## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include = FALSE----------------------------------------------------------
library(orthGS)

## -----------------------------------------------------------------------------
# ara <- subsetGS("Arabidopsis thaliana")
# muscle_aln <- msa(sequences = ara$prot, ids = ara$phylo_id, method = "muscle3")
# muscle_aln

## -----------------------------------------------------------------------------
# clustalo_aln <- msa(sequences = ara$prot, ids = ara$phylo_id, method = "clustalo")
# clustalo_aln

## -----------------------------------------------------------------------------
# if (!requireNamespace("BiocManager", quietly=TRUE))
#     install.packages("BiocManager")
# BiocManager::install("msa")

# clustalw_aln <- msa::msa(inputSeqs = ara$prot, method = "ClustalW", type = "protein")
# clustalw_aln

## -----------------------------------------------------------------------------
# if (!require("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install("muscle")
# 
# if (!require("Biostrings", quitely = TRUE))
#   BiocManager::install("Biostrings")

# seqs <- Biostrings::AAStringSet(ara$prot)
# mus_aln <- muscle::muscle(seqs)
# mus_aln

## -----------------------------------------------------------------------------
# # if (!require("BiocManager", quietly = TRUE))
# #     install.packages("BiocManager")
# # BiocManager::install("Biostrings")
# 
# sq <- ara$prot
# names(sq) <- ara$phylo_id
# seqs <- Biostrings::AAStringSet(sq)
# 
# ## --- Save the input sequences in a temporary file
# destfile <- tempfile(pattern = "input_sequences",
#                      tmpdir = tempdir(),
#                      fileext = ".fasta")
# Biostrings::writeXStringSet(seqs, filepath = destfile)
# 
# 
# ## --- Run MUSCLE on the input sequences file
# system(paste("muscle -align ", destfile, " -output aligned_sequences.fasta", sep = ""))
# 
# ## --- Read fasta alignment as dataframe
# m5 <- seqinr::read.fasta(file = "./aligned_sequences.fasta")
# m5df <- as.data.frame(matrix(rep(NA, length(m5[[1]]) * length(m5)), nrow = length(m5)) )
# for (i in 1:length(m5)){
#   m5df[i, ] <- m5[[i]]
# }

