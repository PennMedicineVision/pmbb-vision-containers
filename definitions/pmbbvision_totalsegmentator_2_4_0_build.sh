#!/bin/bash
# Filename: pmbbvision_totalsegmentator_2_4_0.sh
#SBATCH --partition=short
#SBATCH --mem=16G
#SBATCH --time=01:00:00

# build an apptainer based on Ubuntu 24.04

module load containers/ubuntu/24.04

# copy the ubuntu_24.04.sif file if not present
[[ ! -f ubuntu_24.04.sif ]] && cp $UBUNTUSIF .

apptainer build /cbica/projects/pmbb-vision/containers/images/pmbbvision_totalsegmentator_2_4_0.sif /cbica/projects/pmbb-vision/containers/definitions/pmbbvision_totalsegmentator_2_4_0.def


