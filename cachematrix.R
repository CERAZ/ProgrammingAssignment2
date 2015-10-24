## Put comments here that give an overall description of what your
## functions do  --

## makeCacheMatrix -- Creates a matrix that incorporates lexical scopping
## which creates two environments: A CACHE FOR STORING/RETRIVAL AND
## THE OTHER FOR EXECUTION ON THE MATRIX

## Write a short comment describing this function --

## makeCacheMatrix -- This function creates a matrix from a data object such 
## as a vector/array/factor/frame and sets two environments.  One environment
## is for creating the matrix from the object and the other environment is
## for storage of the created matrix

makeCacheMatrix <- function(x = matrix()) {

    
}


## Write a short comment describing this function

## cacheSolve -- This function takes the cached martix created by "makeCache
## Matrix" and renders an inverse matrix for the variable 'x' in the "cache
## Solve" function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
