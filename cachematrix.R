##makeCacheMatrix creates a special Matrix object (which is really a special list)
## which allows a matrix to be set or recalled, and allows the inverse of the matrix to be set or recalled

## this function was written by Patrick Devlin (MemoryExpert on Github)

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) { #function to store matrix data, pushed to 
    x <<- y
    inv <<- NULL
  }
  get <- function() x #function to recall matrix data
  setInverse <- function(inverse) inv <<- inverse #function to store inverse matrix
  getInverse <- function() inv #function to recall inverse matrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) #special list of functions
}


## cacheSolve checks to see if the inverse of a matrix was already found and returns
## the value if it is found. If not, the inverse of the matrix is computed and
## stored in the cache.

cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    if(!is.null(inv)) {
      message("getting cached inverse of matrix")
      return(inv)
    }
  data <- x$get()
  inv <- solve(data) #inverts matrix (must be square with determinant of matrix 'data' != 0)
  x$setInverse(inv)
  inv  ## Return a matrix that is the inverse of 'x'
}
