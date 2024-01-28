#!/bin/bash


#computeMatrix reference-point -S DSS_mCRPC_PRAD.bw -R ../Deeptools/arbs_otherlinc.bed ../Deeptools/foxbs_otherlinc.bed ../Deeptools/h3ac_otherlinc.bed ../Deeptools/hmr_otherlinc.bed --referencePoint center -a 10000 -b 10000 -o otherlinc.gz --sortRegions no

#computeMatrix reference-point -S DSS_mCRPC_PRAD.bw -R ../Deeptools/arbs_tmelinc.bed ../Deeptools/foxbs_tmelinc.bed ../Deeptools/h3ac_tmelinc.bed ../Deeptools/hmr_tmelinc.bed --referencePoint center -a 10000 -b 10000 -o tmelinc.gz --sortRegions no

#computeMatrix reference-point -S DSS_mCRPC_PRAD.bw -R ../Deeptools/arbs_pcalinc.bed ../Deeptools/foxbs_pcalinc.bed ../Deeptools/h3ac_pcalinc.bed ../Deeptools/hmr_pcalinc.bed --referencePoint center -a 10000 -b 10000 -o pcalinc.gz --sortRegions no

plotProfile -m tmelinc.gz -out tmelinc.png  --averageType sum --yAxisLabel "Differential methylation" --regionsLabel AR FOXA1 H3K27ac HMR --samplesLabel "TME lncRNAs" --yMax 0 --yMin -15

