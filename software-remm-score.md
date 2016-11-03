---
title: ReMM Score
---

The **Re**gulatory **M**endelian **M**utation (ReMM) score was created for relevance prediction of non-coding variations (SNVs and small InDels) in the human genome (hg19) in terms of Mendelian diseases.
 
Usage
------------
The ReMM score is genome position wise (nucleotide changes are neglected). We precomputed all positions in the human genome (hg19 release) and stored the values in a tabix file. The scores ranging from 0 (non-deleterious) to 1 (deleterious).

If you want to use teh ReMM score together with the Genomiser, please have a look at the [Exomiser framework manual](https://exomiser.github.io/Exomiser/)
 
Download
------------
* Changelog: [changelog.txt](http://remm.visze.de/files/changelog.txt)

**Version 0.3.1:**

* Tabix file: [ReMM.v0.3.1.tsv.gz](http://remm.visze.de/files/ReMM.v0.3.1.tsv.gz)
* Tabix index file: [ReMM.v0.3.1.tsv.gz.tbi](http://remm.visze.de/files/ReMM.v0.3.1.tsv.gz.tbi)
* MD5 checksum: [ReMM.v0.3.1.md5](http://remm.visze.de/files/ReMM.v0.3.1.md5)

**Version 0.3:**

* Tabix file: [ReMM.v0.3.tsv.gz](http://remm.visze.de/files/ReMM.v0.3.tsv.gz)
* Tabix index file: [ReMM.v0.3.tsv.gz.tbi](http://remm.visze.de/files/ReMM.v0.3.tsv.gz.tbi)
* MD5 checksum: [ReMM.v0.3.md5](http://remm.visze.de/files/ReMM.v0.3.md5)

Citation
------------
If you you the ReMM Score please cite the following:

    Damian Smedley,  Max Schubach,  Julius OB Jacobsen,  Sebastian Köhler,  Tomasz Zemojtel, Malte Spielmann, Marten Jäger, Harry Hochheiser, Nicole L Washington, Julie A McMurry, Melissa A Haendel, Christopher J Mungall, Suzanna E Lewis, Tudor Groza, Giorgio Valentini, Peter N Robinson. (2016). 
    A Whole-Genome Analysis Framework for Effective Identification of Pathogenic Regulatory Variants in Mendelian Disease. 
    The American Journal of Human Genetics, 99(3), 595–606. http://doi.org/10.1016/j.ajhg.2016.07.005
