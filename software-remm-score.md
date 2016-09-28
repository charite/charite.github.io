---
title: ReMM Score
---

The Regulatory mendelian Mutation (ReMM) score was created for relevance prediction of variations (SNVs and small InDels) in the human genome (hg19) in terms of Mendelian diseases.
 
Usage
------------
The ReMM score is genome position wise (nucleotide changes are neglected). We precomputed all positions in the human genome (hg19 release) and stored the values in a tabix file. The scores ranging from 0 (non-deleterious) to 1 (deleterious).

If you want to use teh ReMM score together with the Genomiser, please have a look at the [Exomiser framework manual](https://exomiser.github.io/Exomiser/)
 
Download
------------
*Tabix file: [remmData.tsv.gz](ftp://ftp.sanger.ac.uk/pub/resources/software/exomiser/downloads/exomiser/remm/remmData.tsv.gz)
* Tabix index file: [remmData.tsv.gz.tbi](ftp://ftp.sanger.ac.uk/pub/resources/software/exomiser/downloads/exomiser/remm/remmData.tsv.gz.tbi)

Citation
------------
If you you the ReMM Score please cite the following:

    Damian Smedley,  Max Schubach,  Julius OB Jacobsen,  Sebastian Köhler,  Tomasz Zemojtel, Malte Spielmann, Marten Jäger, Harry Hochheiser, Nicole L Washington, Julie A McMurry, Melissa A Haendel, Christopher J Mungall, Suzanna E Lewis, Tudor Groza, Giorgio Valentini, Peter N Robinson. (2016). 
    A Whole-Genome Analysis Framework for Effective Identification of Pathogenic Regulatory Variants in Mendelian Disease. 
    The American Journal of Human Genetics, 99(3), 595–606. http://doi.org/10.1016/j.ajhg.2016.07.005
