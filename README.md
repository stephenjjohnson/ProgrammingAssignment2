### cachematrix.R

Solution to Assignment 2 of R Programming from Coursera

`cachematrix.R` defines two functions:

1.  `makeCacheMatrix`: creates a special "matrix" object
    that can cache its inverse. Aassumes that the matrix supplied is always
    invertible.

2.  `cacheSolve`: computes the inverse of the special
    "matrix" returned by `makeCacheMatrix`. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve`  retrieves the inverse from the cache.
