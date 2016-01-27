library(oxwaspLDA, lib.loc="~/R")
data(nips)
registerDoParallel(cores = 4)
res2 = onlineLDA_minibatch(Wtrain, Wtest, n_topics=10, batch_size=2, n_iter=1000)

library(oxwaspLDA, lib.loc="~/R")
data(nips)
registerDoParallel(cores = 4)
res4 = onlineLDA_minibatch(Wtrain, Wtest, n_topics=10, batch_size=4, n_iter=1000)

library(oxwaspLDA, lib.loc="~/R")
data(nips)
registerDoParallel(cores = 8)
res4 = onlineLDA_minibatch(Wtrain, Wtest, n_topics=10, batch_size=4, n_iter=1000)
