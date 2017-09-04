## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}



####
#cache1 <- makeCacheMatrix(matrix(c(1,2,1,1), nrow=2, ncol=2))
#print(cache1$get())
#print(cacheSolve(cache1))
#cache1$set(matrix(c(1,2,2,1), nrow=2, ncol=2))
#print(solver$get())
#print(cacheSolve(cache1))
#print(cacheSolve(cache1))



