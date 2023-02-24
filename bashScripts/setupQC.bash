#!/bin/bash

. "/data/CCBR_Pipeliner/db/PipeDB/Conda/etc/profile.d/conda.sh"
#conda init scRNA4
conda activate scRNA4

module load R/4.2

mkdir -p "QC/images/$1"
Rscript workflow/nw_updates_202209/scrna_QC.R cellRangerOut/ QC/ $1 0.2,0.4,0.6,0.8,1.0,1.2,1.4 hg38 HPCA
