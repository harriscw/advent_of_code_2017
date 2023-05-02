digits = readLines("../input.txt")

###
# ChatGPT's first P1 solution
###

digits <- "1122" # assume the input is a string of digits
total <- 0
for (i in 1:nchar(digits)) {
  if (substr(digits, i, i) == substr(digits, (i+1) %% nchar(digits) + 1, (i+1) %% nchar(digits) + 1)) {
    total <- total + as.integer(substr(digits, i, i))
  }
}
print(total)



###
# ChatGPT's second P1 solution
###


# digits <- "1122" # assume the input is a string of digits
total <- 0
for (i in 1:nchar(digits)) {
  if (substr(digits, i, i) == substr(digits, (i %% nchar(digits)) + 1, (i %% nchar(digits)) + 1)) {
    total <- total + as.integer(substr(digits, i, i))
  }
}
print(total)



###
# ChatGPT's P2 solution
###

# digits <- "1212" # assume the input is a string of digits
n <- nchar(digits)
halfway <- n/2
total <- 0
for (i in 1:n) {
  if (substr(digits, i, i) == substr(digits, (i + halfway - 1) %% n + 1, (i + halfway - 1) %% n + 1)) {
    total <- total + as.integer(substr(digits, i, i))
  }
}
print(total)
