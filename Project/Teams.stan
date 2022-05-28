data {
   int<lower=0> N;
   int<lower=0,upper=1> y[N];
 }
 parameters {
   real<lower=0,upper=1> theta;
 }
 model {
   theta ~ normal(0.5,0.1);  // uniform prior on interval 0,1
   y ~ bernoulli(theta);
 }