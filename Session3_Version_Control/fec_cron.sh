#!/bin/bash -l

source ~/.bash_profile
module load python/anaconda3.6
python ~/fellows_workshop_2022/Session3_Version_Control/fec_extract.py
echo "Cron Job is running on KLC Node 201."

