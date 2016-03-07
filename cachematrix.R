## Put comments here that give an overall description of what your
## functions do


## these are variables which store the current inverted matrix and most recent metrix sent for inversion
currentinverse<<-matrix()
currentmatrix<<-matrix()


## this function takes a matrix x and stores the result in cacheSolve
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
    
        result<-identical(x,currentmatrix)
        if (result==TRUE) {
        print("no change to the source matrix- so nothing to invert -current matrix unchanged ")
        currentinverse
        } else
        {
        print("matrix changed - solving and inverting  - new inverted matrix")
        i<-solve(x)    
        i
        }
}
