## Matrix inversion caching - programming assignment #2 in R Programming course
## Greg Linde - December 2014
## Create functions to return the inverse of a matrix, and cache the result to
## avoid unnecessary computations when possible

## makeCacheMatrix - 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    getInv <- functionx(solve) m <<- solve
}


## cacheSolve - 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
}
