fact <- function(N){
  # function cuts the decimal part and then calculates the factorial
  # from that part
  N = floor(N)
  
  if ( N < 0)
      return (-1)
  else {
    if (N == 1 | N == 0)
        return (1)
    else
        return (N*fact(N-1))
  }
}
