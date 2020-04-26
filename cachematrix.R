
R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> makecache<- function(x=matrix){
+       inv<- NULL
+       set<- function(y){
+ 
+              x<<- y
+              inv<<- NULL
+          }
+ 
+          get<- fucntion() x
Error: unexpected symbol in:
"
         get<- fucntion() x"
>          setmean<- function(inv)
+          inv<<- inverse
> 
>          getmean<- function() inv
>          list(set=set, get=get, setinv=setinv, getinv=getinv)
Error: object 'set' not found
> }
Error: unexpected '}' in "}"
> cachesolve<- function(x, ...){
+ 
+           inv<- x$getinv()
+           if(!is.null(inv)) {
+ 
+                    message("getting cached data")
+                    return(inv)
+ 
+             }
+            mat.data = x$get()
+            inv = solve(mat.data,...)
+            x$setinv(inv)
+ 
+            return(inv)
+ 
