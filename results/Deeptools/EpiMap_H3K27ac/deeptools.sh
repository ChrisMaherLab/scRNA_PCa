#!/bin/bash

#Download EpiMap data from H2K7ac observed at: https://epigenome.wustl.edu/epimap/data/averagetracks_pergroup/
#LiftOver UCSC tools to convert to hg19 for bed files
#Full dir on HPC

#computeMatrix reference-point -S *.bigWig -R hg19_h3ac_tmelinc.bed  --referencePoint center -a 10000 -b 10000 -o tmelinc.gz --sortRegions no
#computeMatrix reference-point -S *.bigWig -R hg19_h3ac_pcalinc.bed  --referencePoint center -a 10000 -b 10000 -o pcalinc.gz --sortRegions no



plotProfile -m pcalinc.gz -out pcalinc.png  --averageType mean --yAxisLabel "H3K27ac FC" --yMax 10 --perGroup --plotHeight 20 --plotType heatmap --samplesLabel Adipose Blood/Tcell Bone Brain Cancer Digestive ES ESC Endocrine Endothelial Epithelial HSC/Bcell Heart Kidney Liver Lung Lymphoblastoid Muscle Myosat Neurosph PNS Pancreas Placenta Reproductive Smoothmuscle Spleen Stromal Thymus Urinary iPSC  --regionsLabel "PCa lncRNAs"

#plotProfile -m tmelinc.gz -out tmelinc.png  --averageType mean --yAxisLabel "H3K27ac FC" --yMax 15 --perGroup --plotHeight 20 --plotType heatmap --samplesLabel Adipose Blood/Tcell Bone Brain Cancer Digestive ES ESC Endocrine Endothelial Epithelial HSC/Bcell Heart Kidney Liver Lung Lymphoblastoid Muscle Myosat Neurosph PNS Pancreas Placenta Reproductive Smoothmuscle Spleen Stromal Thymus Urinary iPSC  --regionsLabel "TME lncRNAs"
