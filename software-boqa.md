---
title: BOQA
---

The Bayesian Ontology Query Algorithm (BOQA) integrates the knowledge stored in an ontology and the accompanying annotations into a Bayesian network in order to implement a search system in which users enter one or more terms of the ontology to get a list of appropriate domain items. This is the companion Website to the original Bioinformatics publication. Here, we provide an implementation as well as the Benchmark procedure.
 
##Usage

Please look into the README file in the distribution archive for usage instructions and licensing conditions.
 
##Download

[boqa-dist.tar.gz](http://compbio.charite.de/contao/index.php/boqa.html?file=tl_files/boqa/boqa-dist.tar.gz)

##Extended Benchmark

The benchmark procedure also includes procedures that we had to omit in the final publication due to space limitations. Next to the sampling approch using the Lin and Jan-Conrath measure, we also implemented a recent measure called MB that was published in the paper Finding Disease Similarity based on Implicit Semantic Similarity by Sachin Mathur and Deendayal Dinakarpandian. As in the publication, we provide [ROC](http://compbio.charite.de/contao/tl_files/boqa/roc-results.html) and [precision/recall](http://compbio.charite.de/contao/tl_files/boqa/pr-results.html) classifier measures.

##Demonstration Application

For demonstration purposes, we implemented the BOQA algorithm as a Web application. The URL is [http://compbio.charite.de/boqa-demo/main](http://compbio.charite.de/boqa-demo/main). The application uses the HPO as attribute ontology and OMIM diseases as items, thus functioning as an assistant to physicians of Human genetics. The application utilizies RWT from Eclipse's RAP framework.
