generated quantities {
   int n = 4;
   int alpha;
   real T = uniform_rng(4.5,7.5);

   if (T < 5.5)
      alpha = 5; 
   else if (T < 6.5)
      alpha = 6;
   else
      alpha = 7;

   real theta = normal_rng(0.55,0.09);
   real y = binomial_lpmf( n | alpha, theta);
}