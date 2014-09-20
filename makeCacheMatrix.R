makeCacheMatrix <- function(Mat = matrix()) {
        inv <- NULL                  #the inverse of the matrix
        set <- function(y) {         #set a new matrix
                Mat <<- y
                inv <<- NULL
        }
        get <- function() Mat        #get the matrix
        setinv <- function(inverse) inv <<- inverse     #set the inverse
        getinv <- function() inv     #get the inverse of the matrix
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}
