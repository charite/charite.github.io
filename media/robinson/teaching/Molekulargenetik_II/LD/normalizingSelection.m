%Normalisierende Selektion
%s. Vorlesungsskript 



p_a=0.3;
p_b=0.7;
ngenerations=100;

p_A=1-p_a;
p_B=1-p_b;

%Initial besteht ein Kopplungsgleichgewicht, daher p(ab)=p(a)p(b) usw.

p_ab=p_a*p_b;
p_aB=p_a*p_B;
p_Ab=p_A*p_b;
p_AB=p_A*p_B;

d= zeros(ngenerations,1);
genotype_freq = zeros(ngenerations,4);

D=p_AB*p_ab - p_Ab*p_aB;
d(1) = D;
genotype_freq(1,:)=[p_ab,p_aB,p_Ab,p_AB];



%Ab jetzt besteht eine normalisierende Selektion

for i=2:ngenerations
    % Calculate and store genotype frequencies
    [p_ab,p_aB,p_Ab,p_AB] = gtype_select(p_ab,p_aB,p_Ab,p_AB);
    genotype_freq(i,:)=[p_ab,p_aB,p_Ab,p_AB];    
    %Calculate and store LD
    d(i)=p_AB*p_ab - p_Ab*p_aB;
end
 
subplot(2,1,1);
plot(1:ngenerations,genotype_freq(:,1),'b-');
hold on;
plot(1:ngenerations,genotype_freq(:,2),'ro');
plot(1:ngenerations,genotype_freq(:,3),'g.-');
plot(1:ngenerations,genotype_freq(:,4),'m.');
legend('p_{ab}','p_{aB}','p_{Ab}','p_{AB}');
xlabel('Generation');
ylabel('Frequenz');


subplot(2,1,2);
plot(1:ngenerations,abs(d));
xlabel('Generation')
ylabel('Frequenz');
legend('|d|');


