### Introduction

This file is for Programming Assignment 2: Lexical Scoping in the R class. It checks to see first if the matrix is balanced i.e. both dimensions are the same. Then if the matrix is different from what was previously stored then a new inverted matrix is created.

You can always see the current inverted matrix by typing: currentinverse
You can always see the current matrix by typing: currentmatrix

###Use


1. Start R Studio and set your working directory to where the files are located.
2. The enter source("cachematrix.R")
2. Create a square matrix e.g. mat1<-matrix(rnorm(16),ncol=4,nrow=4)
3. Send the matrix to be inverted i.e. makeCacheMatrix(mat1) - this will store the result in currentinverse. You will also see a message onscreen saying the inversion has taken place.
4. Try running the command above again, you should see a message saying that the inversion has not taken place as the matrix is the same.
5. Now try creating a new matrx e.g. mat2<-matrix(rnorm(100),ncol=10,nrow=10) 
6. run makeCacheMatrix(mat2) you should now see a message saying that a new matrix has been created.


