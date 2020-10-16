# MDS operator

##### Description

`MDS` operator performs a Multidimensional Scaling analysis.

##### Usage

Input projection|.
---|---
`y-axis`        | numeric, distance measure
`col`        | character, `dist_to` variable obtained from a `pairwise_distance` operator
`row`        | character, variables

Output relations|.
---|---
`mds_1`        | numeric, first dimension
`mds_2`        | numeric, second dimension

##### Details

The operator takes as input a pariwise distance matrix as obtained with the [pairwise_distance_operator](https://github.com/tercen/pairwise_distance_operator).

##### References

This operator is a wrapper of the [cmdsale R function](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/cmdscale.html).

##### See Also

[pca_operator](https://github.com/tercen/pca_operator), [pairwise_distance_operator](https://github.com/tercen/pairwise_distance_operator)
