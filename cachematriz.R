## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
MatrizCache <- function(x = matrix()) {
  inversa <- NULL
  set <- function(y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setinversa <- function(inverse) inversa <<- inverse
  getinversa <- function() inversa
  list(set = set, get = get, setinversa = setinversa, getinversa = getinversa)
}
## Write a short comment describing this function
cacheSolucion <- function(x, ...) {
  inversa <- x$getinversa()
  if(!is.null(inversa)) {
    print("esta mal")
    return(inversa)
  }
  datos <- x$get()
  inversa <- solve(datos)
  x$setinversa(inversa)
  inversa
}
