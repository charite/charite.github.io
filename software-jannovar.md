---
title: Jannovar
---

##A Java library for Exome Annotation

Transcript-based annotation and pedigree analysis are two basic steps in the computational analysis of whole-exome sequencing experiments in disease-gene discovery projects or diagnostics. Jannovar is a stand-alone Java application as well as a Java library designed to be used in larger software frameworks for exome analysis. Jannovar uses an interval tree to identify all transcripts affected by a given variant, and provides HGVS-compliant annotations for both for variants affecting coding sequences and splice junctions as well as UTR sequences and non-coding RNA transcripts. Jannovar can also perform family-based pedigree analysis with VCF files with data from members of a family segregating a Mendelian disorder. Using a desktop computer, Jannovar requires a few seconds to annotate a typical VCF file with exome data.

##Downloads

For convenience, we provide a compiled version of the Jannovar executable. The latest version of jannovar is always available at the project github repository. See the instructions in the [online manual](http://jannovar.readthedocs.org/en/master/) for information about how to use Jannovar.

[https://github.com/charite/jannovar/releases](https://github.com/charite/jannovar/releases)


##Downloading the source code

Developers can download the entire source code for the Jannovar project in the form of a maven repository from [https://github.com/charite/jannovar](https://github.com/charite/jannovar).

##License issues

Jannovar is distributed under a [BSD2 license](http://opensource.org/licenses/bsd-license.php).

