## Put comments here that give an overall description of what your
## functions do

## ** These commented-out functions are the examples we were given **

#makeVector <- function(x = numeric()) {
 # m <- NULL
#  set <- function(y) {
 #   x <<- y
  #  m <<- NULL
  #}
  #get <- function() x
  #setmean <- function(mean) m <<- mean
  #getmean <- function() m
  #list(set = set, get = get,
  #     setmean = setmean,
  #     getmean = getmean)
#}


#cachemean <- function(x, ...) {
#  m <- x$getmean()
#  if(!is.null(m)) {
#    message("getting cached data")
#    return(m)
#  }
#  data <- x$get()
#  m <- mean(data, ...)
#  x$setmean(m)
#  m
#}

# The way the above functions are used -- from here: https://github.com/lgreski/datasciencectacontent/blob/master/markdown/rprog-breakingDownMakeVector.md
#aVector <- makeVector(1:10)
#aVector$get()               # retrieve the value of x
#aVector$getmean()           # retrieve the value of m, which should be NULL
#aVector$set(30:50)          # reset value with a new vector
#cachemean(aVector)          # notice mean calculated is mean of 30:50, not 1:10
#aVector$getmean()           # retrieve it directly, now that it has been cached



## My assignment answers

# setting the matrix:
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## solving the matrix:
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

## Testing my functions out

#matrix2 <- makeCacheMatrix(matrix( c(5, 1, 0,
 #                                    3,-1, 2,
  #                                   4, 0,-1), nrow=3, byrow=TRUE)) # set a new matrix (which must be invertible)
#matrix2$get()               # retrieve the value of x
#matrix2$getinverse()           # retrieve the value of inv, which should be NULL
#matrix2$set(matrix( c(-6, 4,
 #                     -10, -11), nrow=2, byrow=TRUE))          # reset value with a new matrix (again, must be invertible)
#cacheSolve(matrix2)          # solve the new, updated matrix
#matrix2$getinverse()           # retrieve the inverse directly, now that it has been cached
