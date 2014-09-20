## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      ##return the non-inverted matrix
      get <- function() x
      ##cache the inverted matrix
      setinverse <- function(inverse) m <<- inverse
      ##retrieve the cached inverted matrix
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getinverse()
      ##retrieve matrix
      data <- x$get()
      ##find the inverse of the matrix
      m <- solve(data, ...)
      ##save the inverted solution
      x$setinverse(m)
      m
      
}
