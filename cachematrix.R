## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function will create the special matrix
makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(i) inv <<- i
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

## This function returns the inverse of matrix
cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinv()
        if(!is.null(inv)){
                message("getting inverse")
                return(inv)
        }
        data<-x$get()
        inv=solve(data)
        s$setinv(inv)
        inv
}
