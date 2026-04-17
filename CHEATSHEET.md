# 🐧 Bioinfo-Linux Cheatsheet

### 1. FASTQ Manipulation
- **Count total reads (lines/4):**
  `echo $(zcat file.fastq.gz | wc -l) / 4 | bc`
- **Search for a specific sequence:**
  `zgrep "GATCGAT" file.fastq.gz`

### 2. BAM/SAM Operations (samtools)
- **Check alignment stats:**
  `samtools flagstat sample.bam`
- **Extract reads on Chromosome 1:**
  `samtools view -b sample.bam "chr1" > chr1.bam`

### 3. VCF (variant) Filtering
- **Count variants per sample:**
  `bcftools stats data.vcf.gz | grep "^SN"`

### 4. System Monitoring
- **Check disk usage of large folders:**
  `du -sh * | sort -h`
- **Monitor running cluster jobs:**
  `squeue -u your_username`
