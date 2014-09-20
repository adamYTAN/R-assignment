cacheSolve <- function(Mat, ...) {
        inv <- Mat$getinv()                      #get the inverset of the matrix
        if(!is.null(inv)) {                      #whether cached or not
                message("getting cached data")
                return(inv)
        }
        data <- Mat$get()
        inv <- solve(data, ...)                  #solve the inverse of the matrix
        Mat$setinv(inv)
        inv
}
