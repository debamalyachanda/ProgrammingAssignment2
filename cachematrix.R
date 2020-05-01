makecache<- function(x =matrix){    ##makecache is a fuction which creates a special martix 
+       inv <- NULL                 ##which which can Cache its inverse for the input 
+       set <- function(y){
+ 
+              x <<- y
+              inv <<- NULL
+          }
            get <- fucntion() x
>          setinv <- function(inv)
+          inv <<- inverse
>          getmean <- function() inv
>          list(set=set, get=get, setinv=setinv, getinv=getinv)
> }
> cachesolve<- function(x, ...){      ## cachesolve is a function that computes the 

+           inv <- x$getinv()          ##inverse of the special Matrix returned by the
+           if(!is.null(inv)) {       ##makeCachematrix above. if the inverse has been 
+                                     ##calculated and the matrix is not changed, cachesolve retrives it 
+                    message("getting cached data")
+                    return(inv)
+ 
+             }
+            data <- x$get()
+            inv <- solve(data,...)
+            x$setinv(inv)
+
+            return(inv)
}

## ---------------Checking the program------------------------
## m <- matrix(rnorm(16),4,4)
## m1 <- makeCacheMatrix(m)
## cacheSolve(m1)

## [,1]       [,2]       [,3]       [,4]
## [1,] -0.1653269  0.2592203  0.6176218 -0.7520955
## [2,]  0.2828334 -0.1853499  0.4511382  0.2094365
## [3,]  0.1434840  1.0413868 -0.3550853 -0.3261154
## [4,]  0.1793583 -0.4252171 -0.4371493 -0.1749830