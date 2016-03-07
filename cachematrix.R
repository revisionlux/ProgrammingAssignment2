## Put comments here that give an overall description of what your
## functions do


## these are variables which store the current inverted matrix and most recent metrix sent for inversion
## they are initially set to be empty 
## each matrix must have an equal x,y size
currentinverse<<-matrix()
currentmatrix<<-matrix()


## this function takes a matrix x and stores the result in currentinverse
makeCacheMatrix <- function(x = matrix()) {
    #check if matrix x,y is equal
    t<-dim(x)
    if (t[1]==t[2]) {
      currentinverse<<-cacheSolve(x)
      currentmatrix<<-x
    } else {
      print("your matrix is not not square e.g; 4 x 4 therefore cannot be inverted")
    }
}


## This function checks if the current matrix is different from the last matrix stored
## if it is different then a new inverse of that matrix is sent back otherwise the the original 
## matrix invese is returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' if a new matrix is being processed
        #result checks if the two matrices are equal
        #currentmatrix is the one which was in use
        #x is the potentially new matrix
    
        result<-identical(x,currentmatrix)
        if (result==TRUE) {
        print("no change to the source matrix- so nothing to invert -current inverted matrix unchanged ")
        currentinverse
        } else
        {
        print("matrix changed - solving and inverting  - new inverted matrix")
        i<-solve(x)    
        i
        }
}
