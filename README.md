Minimum Tree Cut
================

This is a Mirror of Zhang's original code hosted on SourceForge: http://sourceforge.net/projects/minimutreecut/files/?source=typ_redirect
Paper: http://www.nlpr.ia.ac.cn/pal/ymzhang/papers/ymzhang-2014-tnnls-MTC.pdf

This program provides a new graph-based transductive learning algorithm. It enjoys two advantages: 1. it has a linear computational cost which makes it suitable for large scale problems; 2. its performance is robust to the graph construction parameters, such as k, \epsilon, \sigma (Thus, in most cases, you can set them to fixed values and do not need to tune them manually). For more information, see:

Yan-Ming Zhang, Kaizhu Huang, and Cheng-Lin Liu. Fast graph-based transductive learning via minimum tree cut. In IEEE International Conference on Data Mining, 2011 (ICDM2011).


0. Installation
===============
On Linux systems, type `make' to build the `mtc' programs. Run it without arguments to show the usage.

1. Usage
========
	Useage: mtc [options] graph_file train_file output_file
	options:
	-t: select the type of spanning tree (default: 0)
		0 -- minimum spanning tree\n"
		1 -- shortest path tree
		2 -- random spanning tree
	-n: set the number of spanning trees (default: 1)


2. Data format
==============

graph_file:
idx1,idx2,weight
.
.
.
Each line contains an edge and is ended by a '\n' character. The node index must be continuous integers and start from 0.

label_file:
idx:label
.
.
.
Each line contains the index of an labeled node and its label. The labels must be continuous integers and start from 0.

output_file:
idx:label
.
.
.
Each line contains the index of an unlabeled node and its predicted label. The labels must be continuous integers and start from 0.

3. Example datasets
===================

mnist, usps, rcv1, news20

XXX_k32_graph.csv contains the 32NN graph of the XXX data set.
XXX_labeled.csv contains the 2%n rondomly selected nodes and their labels.
XXX_unlabeled.csv contains the other 98%n nodes and their labels.




Yan-Ming Zhang (ymzhang1919@gmail.com)
Feb 22, 2013
Yan-Ming Zhang's homepage: http://www.nlpr.ia.ac.cn/pal/ymzhang/
