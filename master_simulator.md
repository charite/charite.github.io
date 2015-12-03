---
title: Open Master's thesis - Genome variant simulator
---

The lower cost of of next-generation sequencing starts a new area of genetic data generation. Thousands of genomes or exomes are sequenced around the world. It is only a matter of time if the vision in sequencing the genome for every patient comes true. Therefore new algorithms needs to be invented to deal with the new flood of genetic information.

Recently the institute of [Institute for Medical Genetics and Human Genetics](http://genetik.charite.de/) start sequencing whole-genomes of patients to find out the causative mutation of their genetic disease. Therefore our computational biology groups developed (and still inventing new) algorithms and combines them with the [Human Phenotype Ontology](http://human-phenotype-ontology.org/) to create tools which efficiently finds the causative mutation.

To benchmark our tools we need artificial genomes where we spike in a possible disease-causing mutations. A widely used approach is to use a public 1000Genomes genome. But these genomes are highly curated so that benchmarking is maybe biased. To test our tools at extreme conditions we developed a new tool that randomly samples a new genome considering variant frequencies of certain populations. In this Master's thesis this tool should be developed further that it can portrait more real sequencing data.

__Mile Stones__

1. Implementing a variant-calling noise simulator considering the complexity (mappability of reads) in the genome.
2. Implementing a variant-calling de-novo simulator considering real de-novo rates on different parts of the genome.
3. Developing a strategy to simulate heredity of variants given a pedigree and implementing it.

__Preconditions__

1. Good Java and programming knowledge.
2. Motivation and enthusiasm about the topic.
3. To have an interest in working on larger software projects.

Contact: [Max Schubach](team_schubach.html)
