---
title: "Hypertidy manifesto"
date: "2017-06-13"
---

## Gridded data 

Hypertidy recognizes that not all gridded data fit into the GIS raster conventions. Gridded data comes in many forms, geographic with longitude-latitude or projected spaces, with time and or depth dimensions, with different orderings of axes (i.e. time-first, the latitude-longitude), and with generally any arbitrary space. A space is simply a set of axes with particular units and projection, and yes we mean "space" and "projection" in the more general mathematical sense. Date-time data is a projection, there is a mapping of a particular set of values to the real line and the position on that line for particular instant is defined by the axis units and epoch. 

Mesh and grid share the same meaning in some contexts. 

## Structured vs. unstructured, topology vs. geometry

Array-based data have a straight-forward relationship between a set of axes that have discrete steps. These are "structured grids". Unstructured grids include triangulations, non-regularly binned histograms, tetrahedral meshes and ragged arrays. 

An unstructured mesh (grid) is able to represent any data structure, but structured meshes have some advantages because of the regular indexing relationship between dimensions. 

GIS vector constructs "polygons", "lines", "points" are special case optimizations of the unstructured grid case. Polygons really are topologically identical to lines, and they are a dead-end in the broader scheme of dimensionality. Points and lines can are topologicaly 0-dimensional and 1-dimensional respectively, and this shape-constraint is the same no matter what geometric dimension they are defined in. A line can twist around a 4D space with x, y, z, t coordinates at its segment nodes or it can be constrained to single dimension with only one of those coordinates specifying its position. The topology of the line is completely independent of the geometry, if we treat the line as composed of topological primitives. 

Polygons are not composed of topological primitives, but they can be treated as being composed of line primitives. 
