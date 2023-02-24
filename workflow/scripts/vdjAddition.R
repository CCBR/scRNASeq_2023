.libPaths("/data/CCBR_Pipeliner/db/PipeDB/Rlibrary_4.1.0_scRNA")
library(Seurat)
library(djvdj)

args = commandArgs(trailingOnly=TRUE)

so_file = as.character(args[1])
tcr_file = as.character(args[2])

so = readRDS(so_file)
so = import_vdj(input=so, vdj_dir=tcr_file, filter_paired=F)
saveRDS(so,so_file)
