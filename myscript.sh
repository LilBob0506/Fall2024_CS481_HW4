#!/bin/bash
cd Fall2024_CS481_HW4
module --ignore_cache load openmpi/4.0.5-gnu-pmi2
mpicc -g -Wall -o life_mpi life_mpi.c
srun --mpi=pmi2 -n <comm_sz> ./life_mpi <board_sz> <max_iter> /scratch/ualclsd0193
