## Matrix inversion caching - programming assignment #2 in R Programming course
## Greg Linde - December 2014
## Create functions to return the inverse of a matrix, and cache the result to
## avoid unnecessary computations when possible

## makeCacheMatrix - create the matrix object which can cache the result from 'solve'

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setMatrix <- function(solve) m <<- solve
    getMatrix <- function() m
    list(set = set,
         get = get,
         setMatrix = setMatrix,
         getMatrix = getMatrix)
}


## cacheSolve - calculate the inverse, grabbing cached result if it exists

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getMatrix()
    if (!is.null(m)) {
        message("Getting cached matrix") ## Let us know we're pulling cached result
        return(m)
    }
    ## If we get here, we have to do the math
    data <- x$get()
    m <- solve(data, ...)
    x$setMatrix(m)
    m
}
