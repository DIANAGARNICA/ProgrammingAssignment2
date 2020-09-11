matrizcache<- function (x=matrix()){
  inv<-NULL
  SET<-function(y){
    x<<-y
    inv<<- NULL
  }
  obtener<- function () {x}
  setInverse<- function(inverse){inv<<-inverse}
  getInverse<-function(){inv}
  list (set=SET, get=obtener, setInverse=setInverse, getInverse=getInverse)
  
}

Resolvercache <-  function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)){
    message("obteniendo datos del caché")
    return(inv)
  }
  mat<-x$get()
  inv<- solve(mat, ...)
  x$setInverse(inv)
  inv
}









