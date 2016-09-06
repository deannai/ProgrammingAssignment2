## Put comments here that give an overall description of what your
## functions do

## Given a Matrix, this function creates a special "matrix" object that can 
## cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        ## Set the values of the matrix
        ## Initialize inv variable to NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        ## get function returns the value of the matrix
        get <- function() x
        ## setInv caches the passed inverse value as a Global Environment variable
        setInv <- function(inv_value) inv <<- inv_value
        ## getInv returns the inverse of the matrix
        getInv <- function() inv
        list(set=set, get=get, setInv=setInv, getInv=getInv)
                
}


## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInv()
        if(!is.null(inv)) {
                message("getting cached data")
                return inv
        }
}
