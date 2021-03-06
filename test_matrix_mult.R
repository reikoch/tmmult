# read the matrix M from github.roche.com,
# compute t(M)*M and check it for symmetry

M <- readRDS(url('https://raw.githubusercontent.com/reikoch/tmmult/master/winetest.rds'))
SM <- t(M) %*% M
which( t(SM) - SM != 0, arr.ind=TRUE)  # lists the positions where SM is not symmetric
summary(c(t(SM)-SM))                   # summary of all differences of SM elements
