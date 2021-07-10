#!bin/bash

## Job name
#SBATCH -J add_math

## priority
#SBATCH --account=carney-frankmj-condo

## output file (where all print() is recorded)
#SBATCH --output/cbuccald/batch_job_out/test_the_oscar.out

## model parameters 
parameter1=($(seq 1 1 10))
parameter2=($(seq 1 1 10))
parameter3=($(seq 1 1 10))

## request runtime, memory, cores:
#SBATCH --time=00:00:05
#SBATCH --mem=1G
#SBATCH -c 1
#SBATCH -N 1
#SBATCH --array=1-1000

## still have to write a bunch of things here!!!

## looping to parallelize
N_samples=($((${#parameter1[@]} * ${#parameter2[@]} * ${#parameter2[@]})))

for i in "${N_samples[@]}"
do
