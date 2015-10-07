function A = select(p,s,h,ngenerations)
% A=select(p,N,ngenerations)
% p=initial frequency of A
% s=0.1;    % Selection advantage
% h=1 for dominant, 0 for recessive
% ngenerations=Number of generations to be simulated

%The following function calculates p_{n+1} given p_n
f=@(p,q,h,s) (p^2*(1+s) + p*q*(1+h*s))/(1+s*(p^2 + 2*h*p*q));


A = [p];

for i=2:ngenerations
    q=1-p;
    p = f(p,q,h,s);
    A = [ A; p  ];
end

