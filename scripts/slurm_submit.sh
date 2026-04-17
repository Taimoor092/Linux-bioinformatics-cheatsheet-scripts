#!/bin/bash
#SBATCH --job-name=bwa_align
#SBATCH --output=logs/align_%j.out
#SBATCH --error=logs/align_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=04:00:00
#SBATCH --partition=standard

module load bwa
module load samtools

# Variables
REF="ref/human_g1k_v37.fasta"
READS="data/sample_R1.fastq.gz data/sample_R2.fastq.gz"

echo "Aligning reads..."
bwa mem -t $SLURM_CPUS_PER_TASK $REF $READS | \
samtools view -Sb - | \
samtools sort -@ $SLURM_CPUS_PER_TASK -o results/sample_sorted.bam -

echo "Job completed on $(date)"
