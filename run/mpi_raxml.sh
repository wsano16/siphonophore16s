#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Use 1 node with 8 tasks, for 8 MPI tasks:
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8

# Specify a job name:
#SBATCH -J MyMPIJob

# Specify an output file
#SBATCH -o MyMPIJob-%j.out
#SBATCH -e MyMPIJob-%j.out

# Run a command

module load raxml

mpirun -n 8 raxmlHPC-MPI  -f a -x 12345 -p 12345 -N 100 -m GTRGAMMA -s siph16s.phy -n boot100

