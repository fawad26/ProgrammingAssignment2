## Put comments here that give an overall description of what your
## functions do

## In this assignemnt we will try to make a programm, which cache the computation
# of inverse of a matrix. Some time have computational very costly, problem due to
# amount of data avaialble or due to the complexity of the model. Particularly when we have
#compute values repeatedly, the cost of computation increase. So instead of applying function
# again to calculate a value, we just store the calculated value in cache and recal when needed.


## ## Write a short comment describing this function
##In this function first we will initilize an x matrix and a null i. Then
#we will mutate the object using set and acces the saved object in the
#envirement using get.



makematrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  getsolve <- function() i
  setsolve <- function(solve) i <<- solve
  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Write a short comment describing this function
# in this part we will retive the calculated inverse of matrix ,
#from the envirement using cacheinv function. First it will check that 
#object stored in "i" is null or not, if null then it will calculate 
#otherwise it will retive from cache
#cacheinv <- function(x, ...) {
  i <- x$getsolve()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setsolve(i)
  i
}
#example
#a1<-matrix(1:4,2)
#a2=makematrix(a1)
#cacheinv(a2)
