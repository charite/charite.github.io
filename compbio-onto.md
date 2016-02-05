---
title: Ontologies
---


In the last years ontologies have become an important tool for knowledge representation in biological sciences, the most prominent being the Gene Ontology. In our group we develop new algorithms for data analysis using ontologies. We also developed a new ontology called the Human Phenotype Ontology, which is now applied in several projects in our group as well as elsewhere.


Gene Ontology
------------

The Gene Ontology (GO) provides structured, controlled vocabularies and classifications for several domains of molecular and cellular biology. GO is structured into three domains, molecular function, biological process and cellular component. The terms of the GO form a directed acyclic graph (DAG), whereby individual terms are represented as nodes connected to more specific nodes by directed edges, such that each term is a more specific child of one or more parents. For instance, mismatch repair is a child of (more specific instance of) DNA repair. The Gene Ontology Annotation (GOA) Database and several other groups provide annotations for genes or gene products of over 50 species. The true-path rule is a convention which states that whenever a gene is annotated to a term it is also implicitly associated with all the less specific parents of that term.

<img style="float: right" src="/images/ontologizer.png">


We collaborated with the Computational Biology group of Martin Vingron at the Max-Planck Institute for Molecular Genetics in Berlin-Dahlem to develop a novel statistical procedure for analysis of GO term overrepresentation.

Human Phenotype Ontology
------------

We have tackled the often mentioned problem of missing controlled vocabularies for mining human phenotype data by developing the Human Phenotype Ontology. We have used the HPO to annotate all disease from OMIM, Orphanet, and Decipher and annotating more databases at the moment. Please refer to the [HPO website](http://www.human-phenotype-ontology.org) for further information. We have also used the HPO to develop a new diagnostic tool called the [Phenomizer](http://compbio.charite.de/phenomizer).

