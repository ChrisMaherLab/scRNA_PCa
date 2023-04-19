#!/bin/bash


#computeMatrix reference-point -S DSS_mCRPC_BN.bw -R arbs_otherlinc.bed foxbs_otherlinc.bed h3ac_otherlinc.bed hmr_otherlinc.bed --referencePoint center -a 10000 -b 10000 -o otherlinc.gz --sortRegions no

computeMatrix reference-point -S DSS_mCRPC_BN.bw -R arbs_tmelinc.bed foxbs_tmelinc.bed h3ac_tmelinc.bed hmr_tmelinc.bed --referencePoint center -a 10000 -b 10000 -o tmelinc.gz --sortRegions no


plotProfile -m otherlinc.gz -out otherlinc.png  --averageType sum --yAxisLabel "Differential methylation" --regionsLabel AR FOXA1 H3K27ac HMR --samplesLabel "Other lncRNAs (n=1000)"


plotProfile -m pcalinc.gz -out pcalinc.png  --averageType sum --yAxisLabel "Differential methylation" --regionsLabel AR FOXA1 H3K27ac HMR --samplesLabel "PCa lncRNAs (n=91)" --colors darkblue darkred darkgreen black --yMin -30 --yMax 0
