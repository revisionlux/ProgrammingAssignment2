### Introduction

This file is for Programming Assignment 2: Lexical Scoping in the R class. It checks to see first if the matrix is balanced i.e. both dimensions are the same. Then if the matrix is different from what was previously stored then a new inverted matrix is created.

You can always see the current inverted matrix by typing: currentinverse


###Use

(1) create a square matrix e.g. mat1<-matrix(rnorm(16),ncol=4,nrow=4)
(2) send the matrix to be inverted i.e. makeCacheMatrix(mat1) - this will store the result in current inverse. You will also see a message onscreen saying the inversion has taken place.
(3) try running the command above again, you should see a message saying that the inversion will not take place as the matrix is the same.
(4) Now try creating a new matrx e.g. mat2<-matrix(rnorm(16),ncol=4,nrow=4), you should now see a message saying that a new matrix has been created.