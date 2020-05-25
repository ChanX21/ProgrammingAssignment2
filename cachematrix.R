
makeCacheMatrix <- function(x = matrix()) {
        Inv <- NULL
         y<- NA
           setInv <- function(y){
             y = solve(x)                
           Inv <<- y
           
           }
           
         getInverse <- function () Inv
        
          list(setInv = setInv, getInverse = getInverse )
}


## The makeCacheMatrix Function takes in as input an ivertible matrix it works
   # as follows 
   # -> assign the function along with the input matrix in the argument colM
   # -> call the function with either of the inside functions 
   # -> Inv is the data variable that we need as output 
   # -> setInv function automatically calculates the inverse and returns it 
   # -> getInv function returns the Inv variable

cacheSolve <- function(x, ...) {
  m<-x$getInverse() 
  if (!is.null(m) ){
    message("getting cached data...call the function to get the data")
    return(m)
    
    
  }
  else {
    m <- x$setInv()
    return (m)
  }
  
}

## The cacheSolve Function takes in as input the assigned makeCacheMatrix funct
#  it works as follows 
# -> it checks whether the Inv variable in makeCacheMatrix is null or not
  # -> if its not then it returns the Inv value
  # -> else it calculates the Inverse using setInvand returns Inv 
  # -> Please Call The Function again it get the value 
