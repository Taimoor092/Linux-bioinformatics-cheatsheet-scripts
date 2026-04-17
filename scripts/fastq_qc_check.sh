#!/bin/bash
# Requirements: fastqc, multiqc

IN_DIR="data/fastq"
OUT_DIR="results/qc"

mkdir -p $OUT_DIR

echo "Starting FastQC on all files in $IN_DIR..."
fastqc $IN_DIR/*.fastq.gz -o $OUT_DIR -t 4

echo "Running MultiQC to aggregate results..."
multiqc $OUT_DIR -o $OUT_DIR --filename multiqc_report.html

echo "QC Process finished."
