###################### My functions put the matrixes' inverse options into the cache memory ##########################

### According to the Assignment 2, I am typing a number of functions, that store a matrix inverse in the cache memory
### it produces a matrix that contains its inverse option in my cache memory
makeCacheMatrix <- function(l = matrix()) {
# I have no idea what this is: just imitating the example in the assignment
 z <- NULL
# setting the matrix
setting <- function (matrix) {
        l <<- matrix
        z <<- NULL
}
# getting the matrix
getting <- function () {l}
# setting the matrix's inverse option
InverseOptSetting <-function(inverse) { z<<-inverse}
# getting the matrix's inverse option
InverseOptGetting <- function() {z}
#############################################################################################################

## Write a short comment describing this function
### cacheSolve get the inverse matrix from the cache memory, if it has already been calculated.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        l<- x$InverseOptGetting()
# if the setting option is set already, we return it than
        if(!is.null(l)) { 
        message("getting cached data")
        return (l)
}
# getting the matrix out
data<- x$get()
## figure out the inverse option by multiplying the matrixes
l<- solve(data) %*% data
# setting the inverse
x$InverseOptSetting(l)

l

}

