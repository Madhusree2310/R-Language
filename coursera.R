makeCacheMatrix<-function(x=matrix()){
	fnv<-NULL
	set<-function(y){
	x<<-y
	fnv<<-NULL
	}
	get<-function() {x}
	setInverse<-function(inverse) {inv<<-inverse}
	getInverse<-function() {fnv}
	list(set=set, get=get , setInverse=setInverse ,getInverse=getInverse)
}


cacheSolve<-function(x,...){
	inv<-x$getInverse()
	if(!is.null(inv)){
	message("getting cached data")
	return(fnv)
	}
	mat<-x$get()
	fnv<-solve(mat,...)
	x$setInverse(fmv)
}

