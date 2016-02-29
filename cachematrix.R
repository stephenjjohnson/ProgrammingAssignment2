## Solution to Assignment 2 of R Programming.
## Define functions to
## 1. Set up a special object to store a matrix and cache its inverse
## 2. Calculate the inverse of the matrix stores in the object from (1.) if
##      it hasn't already been calculated, and cache the inverse matrix in the object.
##      If it has already been calculated then just retrieve the cached copy.



## First function: `makeCacheMatrix` takes an invertible matrix, x and returns a list containing functions to
## 1. set the contents of the matrix
## 2. retrieve the contents of the matrix
## 3. set the contents of the inverse matrix using the solve() function
## 4. retrieve the contents of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL  # Initialize an object to hold the inverse matrix


        # Define our functions
        # Store the original matrix, x and a placeholder for its inverse
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x  # function to return the original matrix
        setinverse <- function(solve) m <<- solve  # function to calculate inverse matrix
        getinverse <- function() m  # function to return  the cached inverse matrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Second function, `cacheSolve` takes the list output by `makeCacheMatrix` and
## 1. checks to see if the inverse matrix has already been calculated
## 2. If it has, then retrieve the inverse matrix from the cache
## 3. If not, then retrive the original matrix, calculate its inverse using the solve() function
##      and store the inverse in the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse() # Retrieve the contents of the cache that may or may not contain the inverse matrix
        # If there is something in the cache, print a message to say so and return the inverse matrix
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()  # If there was nothing in the cached object, retrieve the original matrix
        m <- solve(data, ...)  # calculate the inverse matrix
        x$setinverse(m) # store the inverse matrix in the cache
        m  # and finally, return the inverse matrix
}
