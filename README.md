### Patrick Devlin (MemoryExpert)'s R Programming Assignment 2

This repository contains my submission for the week 3 programming assignment for the Data Science Coursera offered by Johns Hopkins.

## Description of cachematrix.R

cachematrix.R contains functions which are used to compute the inverse of a square
invertible matrix.  If the inverse of the matrix has already been computed, the inverse is returned from a cache.

## Example usage

> source('~/R-Projects/Week 3/ProgrammingAssignment2/cachematrix.R')
> testmatrix <- makeCacheMatrix()
> x <- matrix(rnorm(16), 4, 4)
> x
           [,1]        [,2]       [,3]        [,4]
[1,] -1.0543173  1.59660062  1.0824039 -0.07603143
[2,] -1.4415203  0.49003035 -0.2291722 -1.15271287
[3,] -0.3433486 -0.79644251  0.1369758  1.04096607
[4,]  0.5431877 -0.05224404  1.6340366 -1.26905494
> testmatrix$set(x)
> testmatrix$get()
           [,1]        [,2]       [,3]        [,4]
[1,] -1.0543173  1.59660062  1.0824039 -0.07603143
[2,] -1.4415203  0.49003035 -0.2291722 -1.15271287
[3,] -0.3433486 -0.79644251  0.1369758  1.04096607
[4,]  0.5431877 -0.05224404  1.6340366 -1.26905494

> cacheSolve(testmatrix)
            [,1]       [,2]       [,3]        [,4]
[1,] -0.09851373 -0.4879079 -0.5002266  0.03876024
[2,]  0.41046765 -0.2610047 -0.5762544 -0.26019852
[3,]  0.24001040 -0.1145251  0.3841270  0.40473374
[4,]  0.24997329 -0.3455546  0.3042157 -0.23955018

> cacheSolve(testmatrix)
getting cached inverse of matrix
            [,1]       [,2]       [,3]        [,4]
[1,] -0.09851373 -0.4879079 -0.5002266  0.03876024
[2,]  0.41046765 -0.2610047 -0.5762544 -0.26019852
[3,]  0.24001040 -0.1145251  0.3841270  0.40473374
[4,]  0.24997329 -0.3455546  0.3042157 -0.23955018
