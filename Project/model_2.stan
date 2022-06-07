data {
   int<lower=0> N;
   int<lower=0,upper=1> y[N];
 }

 parameters {
   real<lower=0,upper=1> theta;
 }

 model {
   int n = 4;
   int T = 7;
   theta ~ beta(1,1);
   y ~ binomial_cdf( n | T, theta);
 }