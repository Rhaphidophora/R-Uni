primes <- function(M) {
  # implements erastothenes sieve
  sieve = vector(length = M)
  sieve[] = TRUE
  sieve[1] = FALSE
  sieve[2:3] = TRUE
  print(sieve)
  N = floor(sqrt(M)) + 1
  for (i in 2:N) {
    j = 2*i
    while (j <= M) {
      sieve[j] = FALSE
      j = j + i
    }
  }
  prim <- which(sieve == TRUE)
  return (prim)
  
}

#primes(100)