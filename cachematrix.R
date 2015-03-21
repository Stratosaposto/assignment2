## Put comments here that give an overall description of what your
## functions do
# Create a function for a matrix inverse.
# Initialize the 'cache' function to a numeric vector
makeCacheMatrix <- function(x = matrix()) {
# Initialize the 'cache' variable to NULL
 m <- NULL
 # Pass y into the function and set y to the x environment and m to NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
}


## Write a short comment describing this function
# Calculate the inverse matrixo f the special "vector" created with the above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #Assign a vector to "makeCacheMatrix" and name it "get"
        get <- function() x
        # Take a vector m and set it to the vector of m
        setsolve <- function(solve) m <<- solve
        # Return the m 
        getsolve <- function() m
        # Create a list with the values
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
        }
        # Assign m from makeCacheMatrix to a new object
         m <- x$getsolve()
         #  If the inverse matrix is already calculated, get the value from the cache.
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
 #  Otherwise, calculate the inverse of the matrix and set the value in the cache via the setsolve function
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
 # Display the calculated inverse matrix
        m
}
}
