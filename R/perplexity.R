# compute perplexity
calculate_perplexity = function(test_W, alpha, beta, max_iter=30, convergence_threshold=1e-6){
  n_topics = length(alpha)
  M = dim(test_W)[1]
  V = dim(test_W)[2]

  gamma <- matrix((alpha + V/n_topics), M, n_topics)
  phi <- array(0, dim = c(V, n_topics, M))

  res_obj = E_step(gamma, phi, alpha, beta, test_W, max_iter, convergence_threshold)

  loglikelihood = res_obj$likelihood
  perplexity = exp(- loglikelihood / sum(test_W))
  return(perplexity)
}
