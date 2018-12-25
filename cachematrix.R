## Put comments here that give an overall description of what your
## This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inverseMatrix <- NULL
  
  set <- function (y){
    x<<-y
    inverseMatrix<<-NULL
    
  }
  get <- function () x
  
  setInverse <- function (inv_) x<<- inv_
  getInverse <- function ( ) inverseMatrix
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
  
  
  
  
}


## his function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverseMatrix <- x$getInverse()
 
   if(!is.null(inverseMatrix)){
    message("Getting the Cached Information!!")
    return(inverseMatrix)  
  }
  
  result <- x$get()
  inverseMatrix <- solve(result)
  x$setInverse(inverseMatrix)
  inverseMatrix
  
  
}
