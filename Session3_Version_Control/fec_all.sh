#!/bin/bash

clear

# activate conda environment
# module load python/anaconda3.6
# source activate automate_env

# load modules
module load python/anaconda3.6
module load R/4.1.1

# Run python script
python fec_extract.py --start 2018 --end 2020

# only run next step if file exists
{
if [ ! -f ~/fellows_workshop_2022/Session3_Version_Control/weball20.txt ]; then
    echo "FEC 2020 file not found!"
    mail -s "KLC FEC script error" <email_address_here> <<< "2020 FEC file not found!"	
    exit 0
fi
}

# Run R script
Rscript fec_process.R

