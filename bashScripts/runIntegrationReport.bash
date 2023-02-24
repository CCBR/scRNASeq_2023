#!/bin/bash

. "/data/CCBR_Pipeliner/db/PipeDB/Conda/etc/profile.d/conda.sh"
#conda init scRNA4
conda activate scRNA4
module load R/4.2.0
module load python

Rscript workflow/scripts/integrationReport.R peak-infusion_merged.rds peak-infusion_integrated_cca.rds peak-infusion_harmonyGroup.rds peak-infusion_harmonySample.rds peak-infusion_rpca.rds $PWD/integration/images $PWD/integration 0.2,0.4,0.6,0.8,1.0,1.2,1.4 peak-infusion YES NO
