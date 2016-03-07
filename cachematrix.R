## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
currentinverse<<-matrix()
currentmatrix<<-matrix()

makeCacheMatrix <- function(x = matrix()) {
    currentinverse<<-cacheSolve(x)
    currentmatrix<<-x
    return(currentinverse)
}


## This function check if the current matrix is different from the last matrix stored
## if it is different then a new inverse of that matrix is sent back otherwise the the original 
## matrix invese is returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #result checks if the two matrices are equal
        #currentmatrix is the one which was in use
        #x is the potentially new matrix
    
        result<-all.equal(x,currentmatrix)
        print(x)
        print(currentmatrix)
        print(result)
        if (result==TRUE) {
        print("no change - so nothing to invert")
        currentinverse
        } else
        {
        print("solving and inverting")
        i<-solve(x)    
        i
        }
}
