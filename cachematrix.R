## function makeCachMatrix #####################################################
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) 
{
        m   <- NULL
        #define 4 local funtions
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        #put all 4 functions in a list-structure
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
<<<<<<< HEAD
}


## function cacheSolve #####################################################
## This function computes the inverse of the special "matrix" returned by Function "makeCacheMatrix".
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve retrieve the inverse from the cache.
cacheSolve <- function(x, ...) 
{
        m <- x$getinverse()
        print (m)
        if(!is.null(m)) {
                message("getting cached data")                
        }
        else
        {
                data <- x$get()
                m <- solve(data, ...)
                x$setinverse(m)                
        }       
        ## Return a matrix that is the inverse of 'x'
        return(m)
}



=======
}


## function cacheSolve #####################################################
## This function computes the inverse of the special "matrix" returned by Function "makeCacheMatrix".
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve retrieve the inverse from the cache.
cacheSolve <- function(x, ...) 
{
        m <- x$getinverse()
        print (m)
        if(!is.null(m)) {
                message("getting cached data")                
        }
        else
        {
                data <- x$get()
                m <- solve(data, ...)
                x$setinverse(m)                
        }       
        ## Return a matrix that is the inverse of 'x'
        return(m)
}
>>>>>>> b24274a88942f8b61f83ad3e13e339bf03c45ba5
