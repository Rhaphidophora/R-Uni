N = 50
F = c(1, 1)
for (i in seq(3, N)) {
  F=c(F, F[i-1] + F[i-2])
}

print(F)