# 🧬 Alternative Splicing Analysis Using rMATS

**A computational workflow for identifying, quantifying, and visualizing differential alternative splicing events from bulk RNA-seq data.**

## 📖 Overview

Alternative splicing is a fundamental mechanism of post-transcriptional gene regulation that enables the generation of multiple RNA isoforms from a single gene. Dysregulation of alternative splicing is frequently associated with cancer progression, cellular stress responses, and therapeutic resistance.

This repository documents a computational workflow for differential alternative splicing analysis using **rMATS (replicate Multivariate Analysis of Transcript Splicing)**.

rMATS identifies and quantifies alternative splicing events from RNA sequencing data and evaluates differences in exon inclusion between experimental conditions while accounting for biological replicates.

The workflow focuses on identifying significant splicing alterations, characterizing different splicing event types, and investigating the biological consequences of changes in RNA processing.

### Research applications

This analytical approach is particularly relevant to investigating transcription-associated RNA processing alterations in cancer.

In the context of prostate cancer research, differential alternative splicing analysis can help characterize changes in RNA processing following inhibition of transcription-associated cyclin-dependent kinases, including CDK9.

Particular emphasis can be placed on **intron retention**, which may contribute to transcript dysregulation, altered RNA stability, and cellular stress responses.

## 🎯 Objectives

The primary objectives of this analysis are to:

- Identify alternative splicing events from bulk RNA-seq datasets.
- Quantify differential exon inclusion between experimental conditions.
- Characterize different classes of alternative splicing events.
- Identify statistically significant differential splicing events.
- Investigate treatment-associated intron retention.
- Visualize global alternative splicing patterns.
- Identify genes exhibiting altered RNA processing.
- Facilitate integration with differential gene expression and other transcriptomic analyses.

## 🔬 Types of Alternative Splicing Events

rMATS identifies five major classes of alternative splicing events.

| Event | Abbreviation | Description |
|---|---|---|
| Skipped exon | SE | Inclusion or exclusion of an alternative exon |
| Retained intron | RI | Retention of an intronic region in the mature RNA |
| Alternative 5′ splice site | A5SS | Selection of alternative 5′ splice sites |
| Alternative 3′ splice site | A3SS | Selection of alternative 3′ splice sites |
| Mutually exclusive exons | MXE | Alternative inclusion of one of two exons |

## 🔄 Analysis Workflow

```text
           RNA-seq FASTQ files
                    |
                    v
            Quality Control
               FastQC
                    |
                    v
             Read Alignment
                 STAR
                    |
                    v
           Aligned BAM Files
                    |
                    v
               rMATS-turbo
                    |
                    v
       Differential Splicing Analysis
                    |
      +-------------+-------------+
      |             |             |
      v             v             v
  Exon Events   Intron Events   Splice Sites
  SE / MXE           RI         A5SS / A3SS
      |             |             |
      +-------------+-------------+
                    |
                    v
             Event Filtering
          FDR and Delta PSI
                    |
                    v
          Significant AS Events
                    |
                    v
             Visualization
       ├── Splicing event counts
       ├── Delta PSI distributions
       ├── Splicing heatmaps
       ├── Intron retention analysis
       └── Sashimi plots
                    |
                    v
         Functional Interpretation

## 📚 References

**Shen S, Park JW, Lu ZX, Lin L, Henry MD, Wu YN, Zhou Q, Xing Y. (2014).**

rMATS: Robust and flexible detection of differential alternative splicing from replicate RNA-Seq data.

*Proceedings of the National Academy of Sciences*, 111(51), E5593–E5601.

https://doi.org/10.1073/pnas.1419161111

**Dobin A, et al. (2013).**

STAR: ultrafast universal RNA-seq aligner.

*Bioinformatics*, 29(1), 15–21.

https://doi.org/10.1093/bioinformatics/bts635

### Additional resources

- [rMATS-turbo GitHub repository](https://github.com/Xinglab/rmats-turbo)
- [rMATS documentation](https://rmats.sourceforge.io/user_guide.htm)

