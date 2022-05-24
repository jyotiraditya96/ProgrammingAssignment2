## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(k = matrix()) {
  ## Initialize the inverse operation
  i <- NULL
  
  ## Method to set the matrix
  set <- function(y) {
    k <<- y
    i <<- NULL
  }
  
  ## Method to get the matrix
  get <- function() {
    ## Returns the matrix
    k
                      
  }
  
 ## Method to set and get the inverse of matrix
  
  ## Method to Set Inverse
  setInverse <- function(Inv) {
    
    i <<- Inv 
  }
  
  ## Method to Get Inverse
  getInverse <- function() {
    
    i
        
  } 

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  k <- x$getInverse
  
  ## Return just the Inverse
  if(!is.null(k)) {
    
    message("getting cached data")
    return(k)
  }
  
  ## Get the Matrix
  data <- x$get()
  
  ## Calculation of Inverse through Matrix Multiplication
  k <- solve(data)%*%data
  
  x$setInverse(k)
  
  ## Return the Matrix
  k
  
}
