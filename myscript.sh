#!/bin/bash

cd /home/ualclsd0193/Fall2024_CS481_HW4

source /apps/profiles/modules_asax.sh.dyn
module load openmpi/4.1.4-gcc11
mpicc -g -Wall -O -o life_mpi life_mpi.c

mpirun -np 1 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 1 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 1 ./life_mpi 5000 5000 /scratch/ualclsd0193/
