#!/bin/bash -l

source ~/.bash_profile
module load python/anaconda3.6
python ~/fellows_workshop_2022/Session2_Automation/FEC/1_fec_extract.py --start 2018 --end 2020
echo "Cron Job is running on KLC Node 202."

