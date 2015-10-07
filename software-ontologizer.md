---
title: The Ontologizer
---

## A Tool for Statistical Analysis and Visualization of High-Throughput Biological Data Using Gene Ontology


[![Webstart](/assets/images/webstart.jpg)](http://compbio.charite.de/tl_files/ontologizer/webstart/ontologizer.jnlp)

>Mac OS X users, who experienced problems starting Ontologizer, may want to disable Java7 support for starting Webstart applications until the problem is solved. See [http://support.apple.com/kb/HT5559](http://support.apple.com/kb/HT5559) for instructions. Thanks to Christine Oger for finding this work-arround.


A number of methods have been developed to analyze microarray and other high-throughput data derived from measurements of hundreds or thousands of genes or proteins. Depending on the method, the results of analysis consist of a list of many differentially regulated genes or a partitioning of many or all of the genes in the data set into clusters (groups) that putatively share some functionally relevant characteristic. Among the many uses to which the Gene Ontology (GO) has been put is to provide a summary of such lists of genes/proteins according to functional role, biochemical reaction, or location of the gene product in the cell.
The first version of the Ontologizer has been completely redesigned to provide a versatile WebStart or desktop application for the GO term enrichment analysis whose user interface utilizes [Eclipse’s](http://www.eclipse.org/) Standard Widget Toolkit. It supports not only the standard approach to GO term enrichment analysis but also our parent-child method as described by Grossmann, topology based methods as described by Alexa and our new model-based approach

Following analysis with one of the above methods and optionally a multiple-testing correction procedure, the Ontologizer rows of terms together with their p-values or marginal probabilities, annotation counts and other information. Relevance of a term is indicated by color coding according to the sub ontology to which the term belongs, whereby the intensity of the color correlates with the maginitude of relevance.

Users can click on any term in the table to display properties and results related to the term such as its parents and children, its description, and a list of all genes annotated to the term in the study set. This information is presented as a hypertext in the lower panel with links to parent and child terms. The Ontologizer also provides a tightly integrated graphical display of the results using GraphViz.

The following pages present a brief introduction to the Gene Ontology, the standard "term-for-term" approach to statistical analysis, and the the parent child approach.
