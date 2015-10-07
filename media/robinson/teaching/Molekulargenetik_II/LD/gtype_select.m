function [p_ab,p_aB,p_Ab,p_AB] = gtype_select(p_ab,p_aB,p_Ab,p_AB)

%Rekombinationsfrequenz 0.1
theta=0.1;

%% Selektion auf Grund des Phaenotyps
%% 8-9-10-11-12 cm Fluegellaenge
fitness_8 = 0.8;
fitness_9 = 0.9;
fitness_10 = 1.0;
fitness_11 = 0.9;
fitness_12 = 0.8;


%% phenotype = 8 cm
p_ab_ab=p_ab^2 * fitness_8;

%% phenotype = 9 cm
p_ab_aB = 2*p_ab*p_aB * fitness_9;
p_ab_Ab = 2*p_ab*p_Ab * fitness_9;

%% phenotype = 10 cm
p_Ab_aB = 2* p_Ab * p_aB * fitness_10;
p_AB_ab = 2*p_AB*p_ab * fitness_10;
p_Ab_Ab = p_Ab^2 * fitness_10;
p_aB_aB = p_aB^2 * fitness_10;

%% phenotype = 11 cm
p_Ab_AB = 2*p_Ab*p_AB * fitness_11;
p_aB_AB = 2*p_aB*p_AB * fitness_11;

%% phenotype = 12 cm
p_AB_AB = p_AB^2 * fitness_12;



%Renormalize
total = p_ab_ab + p_ab_aB + p_ab_Ab + p_Ab_aB + p_AB_ab + p_Ab_Ab ...
    + p_aB_aB + p_Ab_AB + p_aB_AB + p_AB_AB;
p_ab_ab = p_ab_ab / total;
p_ab_aB = p_ab_aB / total;
p_ab_Ab = p_ab_Ab / total;
p_Ab_aB = p_Ab_aB / total;
p_AB_ab = p_AB_ab / total;
p_Ab_Ab = p_Ab_Ab / total;
p_aB_aB = p_aB_aB / total;
p_Ab_AB = p_Ab_AB / total;
p_aB_AB = p_aB_AB / total;
p_AB_AB = p_AB_AB / total;



% Allelfrequenzen in Gameten berechnen
% Einige, aber nicht alle Rekombinationen fuehren zu neuen Haplotypen
% in den Gameten. zB ab/AB -> aB/Ab, aber ab/ab -> ab/ab 
% und Ab/ab -> Ab/ab

p_ab = p_ab_ab ...
     + 0.5 * p_ab_aB ...  
   +  0.5 * p_ab_Ab  ...
   + (1-theta) * 0.5 *  p_AB_ab   ... 
   + theta * 0.5 * p_Ab_aB; 

p_aB =  0.5 * p_ab_aB ...
    + 0.5 * (1-theta)* p_Ab_aB ...
    + p_aB_aB ...
    + 0.5*p_aB_AB...
      + 0.5*theta*p_AB_ab;
  
p_Ab =  0.5 *p_ab_Ab ...
    + 0.5 * (1-theta)*p_Ab_aB ...
    + p_Ab_Ab ...
    + 0.5 * p_Ab_AB ...
    + 0.5*theta*p_AB_ab;

p_AB = 0.5 *(1-theta)* p_AB_ab ...
    + 0.5* p_Ab_AB ...
    + 0.5*p_aB_AB ...
    + p_AB_AB ...
    + theta * 0.5 * p_Ab_aB;



