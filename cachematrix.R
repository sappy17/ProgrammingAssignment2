## For calculation of the inverse of a matrix.
## The function is suppossed to calculate the inverse of a matrix. We input the matrix into the function to get back the inverse of it.

## Here I am using solve function to calculate the inverse. Then for testing my code I have selected a matrix and tried to find the inverse of it. 
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function() inv <<- solve(x) #calculate the inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

funs <- makeCacheMatrix()
funs$set(matrix(1:4, 2))
funs$get()
funs$setInverse()
inv<-funs$getInverse()

funs$get()
inv
