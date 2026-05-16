# 16S Cyanobacteria
# Eliana Hixon and Lillian (Lilly) Walsh
# Methods
Used Lake Tahoe Aerosol Project and references for data
Pico cyanobacteria can produce toxins that can be found in water vapor; this can contribute to chronic exposure and result in pathologies.
References: https://doi.org/10.3390/ijms22168726, https://doi.org/10.1212/WNL.88.16_supplement.P5.086

The sequences were downloaded from the reference above in fgastqz format. GitHub and VS Code were used to run the analysis. The RON computing cluster and a conda environment were used to complete the necessary steps to clean the sequences in five different steps. This resulted in different graphs in a .qzv format that can then be downloaded and visualized using Qiime2. 

We ran into issues sharing the repository, so the majority of code was run by the repository owner. There was confusion over the denoise and classify steps, but once these were resolved the analysis ran smoothly. Assistance from peers was used during steps 2, 4, and 5. 

# Plots
bray_curtis_emperor.qzv  
DEP_16s_V4-V5_taxa_barplot.qzv  
jaccard_emperor.qzv  
unweighted_unifrac_emperor.qzv  
weighted_unifrac_emperor.qzv
