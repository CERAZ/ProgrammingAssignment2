## Put comments here that give an overall description of what your
## functions do  --

## makeCacheMatrix -- Creates a matrix that incorporates lexical scopping
## which creates two environments: A CACHE FOR STORING/RETRIVAL AND
## THE OTHER FOR EXECUTION ON THE MATRIX

## makeCacheMatrix: This function creates a special "matrix" object that
## can cache its inverse.

## Write a short comment describing this function --

## makeCacheMatrix -- This function creates a matrix from a data object such 
## as a vector/array/factor/frame and sets two environments.  One environment
## is for creating the matrix from the object and the other environment is
## for storage of the inverse matrix.
  
  makeCacheMatrix <- function(x = matrix()) {
    mat<-NULL
    
    set<-function(y){
      x<<-y
      mat<<-NULL
    }
    
    get<-function() x
    setmatrix<-function(solve) mat<<- solve
    getmatrix<-function() mat
    
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
}


## Write a short comment describing this function

## cacheSolve -- This function takes the cached martix created by "makeCache
## Matrix" and renders an inverse matrix for the variable 'x' in the "cache
## Solve" function.  If the matrix has already been calculated (and the matrix )
## has not changed) then the "cacheSolve" should retrieve the inverse from the
## cache.

        ## Return a matrix that is the inverse of 'x'
  
  cacheSolve <- function(x=matrix(), ...) {
    mat<-x$getmatrix()
    
    if(!is.null(mat)){
      message("retriving cached data")
      return(mat)
      
    }
    
    matrix<-x$get()
    mat<-solve(matrix, ...)
    x$setmatrix(mat)
    mat
  }

