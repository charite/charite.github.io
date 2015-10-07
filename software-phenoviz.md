---
title: PhenogramViz
---

PhenogramViz is a tool that automatically analyses and visualizes gene-to-phenotype relations for a set of genes affected by CNV of a patient and a set of HPO-terms representing the symptoms of said patient. The tool makes full use of the cross-species phenotype ontology "uberpheno" (see [here](http://f1000research.com/articles/2-30/v2)).

![PhenoViz](/assets/images/phenoviz.png)


##Video Tutorials

We have a [Youtube-Channel](https://www.youtube.com/channel/UC-hLx_KWD5zlbf7VnV3-fBA) with several tutorial videos, e.g.

 * How to install PhenogamViz: [Video](https://www.youtube.com/watch?v=g4cF_Xo0eUU)
 * How to prepare your data: [Video](https://www.youtube.com/watch?v=vQhtn1lJNkY)
 * How to get from your data to a phenogram: [Video](https://www.youtube.com/watch?v=W9a-24G_vXI)
 * Prioritzation of CNVs: [Video](https://www.youtube.com/watch?v=A4s4_zO7mPU)
 * Phenogram: Internal data and external links: [Video](https://www.youtube.com/watch?v=sS_RPxh64EY)
 * Export and saving of your results: ...
 
 
Please not that you have to turn on the video captions in Youtube. There is no sound in these videos!
 
##Usage

Download and install [Cytoscape Version 3.1.0.](http://www.cytoscape.org/download.php) (PhenogramViz is not compatible to earlier versions of Cytoscape)
Download the jar-file (below) and Select App->Install from file and point the program to the downloaded jar-file.
 
##Example data

PhenogramViz requires two datasets. At first you have to define the the symptoms of the patient (i.e. a set of HPO-term-IDs). 
Second of all you have to define the set of copy-number variant regions in the patients genome. 

1. Symptoms
    + Enter them directly in PhenogramViz
    + Create a file with the HPO-term IDs. Must look like this: download example patient symptoms
2. Copy-number variant regions
    + Load lists of regions (defined by Chromosome +  Start + End (+ type)
    + Load lists of genes


##Download

Current version: [PhenogramViz (0.1.3)](http://compbio.charite.de/tl_files/groupmembers/koehler/phenogramviz/jar/phenogramviz-0.1.3.jar) - This jar-file can then be installed in Cytoscape.
 
Previous: [PhenogramViz (0.1.2)](http://compbio.charite.de/tl_files/groupmembers/koehler/phenogramviz/jar/phenogramviz-0.1.2.jar).
 
##Citation

Please cite this paper when using PhenogramViz:

 
 
##Phenotype data

The cross species phenotype resource (called uberpheno) has been developed in the context of the [Monarch Initiative](http://monarchinitiative.org/).
 
##Data from paper

The data used in the paper can be [found here](http://compbio.charite.de/tl_files/groupmembers/koehler/phenogramviz/data/).
 
This contains the uberpheno ontology (crossSpeciesPheno.obo), the gene-phenotype annotations (HSgenes_crossSpeciesPhenoAnnotation.txt), and the used CNVs (testedBenignCnvs.txt, testedPathogenicCnvs.txt). For the pathogenic CNV we also show the associated HPO-terms.

