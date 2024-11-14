#!/bin/bash

cd /home/ualclsd0193/Fall2024_CS481_HW4

source /apps/profiles/modules_asax.sh.dyn
module load openmpi/4.1.4-gcc11
mpicc -g -Wall -O -o life_mpi life_mpi.c

mpirun -np 1 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 2 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 4 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 8 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 10 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 16 ./life_mpi 5000 5000 /scratch/ualclsd0193/
mpirun -np 20 ./life_mpi 5000 5000 /scratch/ualclsd0193/

cd /scratch/ualclsd0193

diff output.5000.5000.1.txt output.5000.5000.2.txt
diff output.5000.5000.2.txt output.5000.5000.4.txt
diff output.5000.5000.2.txt output.5000.5000.8.txt
diff output.5000.5000.2.txt output.5000.5000.10.txt
diff output.5000.5000.2.txt output.5000.5000.16.txt
diff output.5000.5000.2.txt output.5000.5000.20.txt
