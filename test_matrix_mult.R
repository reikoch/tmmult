# read the matrix M from github.roche.com,
# compute t(M)*M and check it for symmetry

M <- readRDS(url('https://raw.github.roche.com/kochr4/tmmult/master/winetest.rds'))
SM <- t(M) %*% M
which( t(SM) - SM != 0, arr.ind=TRUE)
