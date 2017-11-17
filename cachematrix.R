## This code was written for Week 3's Assignment. It has two functions, each function is briefly described below.

## This first function creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
   s <- NULL
   set <- function(y) {
        x <<- y
        s <<- NULL
  }
  
    get <- function() x
    setinverse <- function(solve) s <<- solve
    getinverse <- function() s
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function finds the inverse of the special matrix created in the above function by first
## checking to see if the inverse has already been calculated. If it has, it gets the inverse from
## the cache and skips the computation.

cacheSolve <- function(x, ...) {
    s <- x$getinverse()
    if(!is.null(s)) {
          message("getting cached data")
          return(s)
  }
    data <- x$get()
    s <- solve(data, ...)
    x$setinverse(s)
    s
        ## A matrix that is the inverse of 'x' is returned.
}
