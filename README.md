# Bioinfo-Utils: Linux & Bash for NGS 🧬

A curated collection of Bash scripts and Linux commands optimized for Next-Generation Sequencing (NGS) data processing.

## 🌟 Why this exists
In bioinformatics, we spend 80% of our time "wrangling" data. These scripts automate the repetitive parts of the pipeline, from file management to HPC job submission.

## 🛠️ Included Tools
1. **Batch Renaming**: Clean up messy sequencing provider names.
2. **Automated QC**: One-command FastQC/MultiQC wrapper.
3. **Region Extractor**: Fast extraction of genome coordinates using `bedtools`.
4. **SLURM Template**: Best-practice template for cluster job submission.

## 📂 Usage
Ensure scripts have execution permissions:
```bash
chmod +x scripts/*.sh
./scripts/batch_rename.sh ./data fastq.gz SAMPLE_A
