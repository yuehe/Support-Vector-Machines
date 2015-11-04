################
# nonlinear separable


param n;

param c; #% Big M;

param x{i in{1..n}, j in{1..4} };

param y{i in{1..n}};

var w{i in{1..4}};

var b;

var s{i in{1..n}} ; # % the slacks

# objective function

minimize obj: 1/2 * sum{i in{1..4}}( w[i]^2 ) + c * sum{i in {1..n}} s[i] ;


subject to c1 {i in {1..n}}:  y[i] * ( sum{j in {1..4}} ( w[j] * x[i,j] ) + b ) >= 1 - s[i];
 c2 {i in{1..n}}: s[i]>=0;





