## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(Y){
    x <<- Y
    Inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(Inverse) inverse <<- inverse
  getinverse <- function() inverse
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(require("corpcor")){
    print("corpcor is already loaded")
  } else{
      print("intalling corpcor")
      install.packages("corpcor")
      if(require(corpcor)){
        print("corpcor succssfully installed")
      } else{
        stop("Could not install corpcor")
      }
  }
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    message("matrix is in the memory")
    return(inverse)
  }
  message("Inverse not in memory, need to calculate")
  data <- x$get()
  inverse <- inverse(data,..)
  x$setinverse(invserse)
  inverse
}
