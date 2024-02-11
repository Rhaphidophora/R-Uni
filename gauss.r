# overenie zakona velkych cisel

N = 500
M = 500

G <- matrix(nrow=N, ncol = M)
for (i in seq(1,M)) {
  G[,i] <- rnorm(N)
}

GA <- matrix(nrow=N, ncol=M)
for (j in 1:M) {
  for (i in 1:N) {
    GA[i, j] <- mean(G[1:i,j])
  }
}

P <- vector(length = M)
for (i in 1:N) {
  P[i] <- ( mean(abs(GA[i,]) < 0.1 ))
}
print(P)

