## Put comments here that give an overall description of what your
## functions do
### We have two functions, one for creating the "object" that will hold the values of the 
### matrix and  its inverse and the functions that set its values. The second function is 
### the one that will perform the calculations

## Write a short comment describing this function
### Create the functions that will be part of the list that will be returned.
### This functions will allow to set the values for the main data items: the
### original matrix and its inverse. We use setters and getters for each one.
makeCacheMatrix <- function(x = matrix()) {
    myInverse <- NULL
    set <- function(matrix){
        x <<- matrix
        myInverse <<- NULL
    }
    get <- function() {
       x
    }
    setInverse <- function(inverse){
        myInverse <<- inverse
    }
    getInverse <- function(){
        myInverse
    }
    
    list(set = set, 
         get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inversed <- x$getInverse()
    if(is.null(inversed)){
        matrix <- x$get()
        inverseSolved <- solve(matrix)
        x$setInverse(inverseSolved)
        return(inverseSolved)
    }
    message("Cached data has been used")
    inversed
}
