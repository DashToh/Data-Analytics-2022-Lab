data {
   int <lower=0> N;
   int<lower=0,upper=1> y1[N];
}

parameters {
   real<lower=0,upper=1> theta;
}

model {
    theta ~ beta(6.5,3.5);
    y1 ~ bernoulli(theta);
}

generated quantities {
   real y = bernoulli_rng(theta);
}