# oxwaspLDA

The package can be installed as follows

```
devtools::install_github("kasparmartens/oxwaspLDA")
```


To start using this, load the package and example data

```
library(oxwaspLDA, lib.loc="~/R")

# load example data
data(nips)

# for parallel computing on 4 cores
registerDoParallel(cores = 4)

```

Mini-batch stochastic LDA

```
res = onlineLDA_minibatch(Wtrain, Wtest, n_topics=10, batch_size=4, n_iter=100)
```


Online stochastic LDA

```
res = onlineLDA(Wtrain, Wtest, n_topics=10, n_iter=100)
```
