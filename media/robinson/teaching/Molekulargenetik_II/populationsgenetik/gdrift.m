% gdrift.m
% Genetische Drift simulieren
% s. Skript für Erklärungen

N=100; % Populationsgröße
p=0.5; % Anteil Typ A in Population
ngenerations = 200;


% Initialisiere Vektor mit Werten für N Individuen in 
% der Population: Allel A: 1, Allel a: 0
pop=rand(N,1)<p;



A=zeros(ngenerations,1);% Vektor mit Anzahl von Allel A Individuen

for i=1:ngenerations
	
	A(i) = sum(pop); % summe der A Individuen

	% N*rand(1,N) multipliziert
	% jedes Element von rand(1,N) mal
	% die Populationsgröße N
	% ceil umwandelt diese Zahlen in die
	% nächstgrößeren Ganzzahlen
	% Das Ergebnis ist ein Vektor von Ganzzahlen,
	% die als Index für einen 1xN Vektor dienen
	
	
	 ind=ceil(N*rand(N,1));

  %Die Population in Generatiobn i+1 wird von
  %zufällig ausgewählten Eltern in der Generation i
  %erzeugt.

  pop=pop(ind);
end

% Ergebnis plotten
clf; % clear current figure.
gen = [1:ngenerations]';
plot(gen,A,'ro-');

axis([ 0 ngenerations 0 100]); % Achsen einstellen [xmin xmax ymin ymax]
xlabel('Generation');      % Beschriftung der X-Achse
ylabel('Anteil der Individuen mit Allel A');
title('Genetische Drift');


% Im folgenden wird der oben aufgeführter Code noch zweimal
% ausgeführt, um zwei weitere zufällige Verläufe zu generieren.
% Merke dass wir mit 'hold on' zusätzliche Daten in der aktuellen
% figure-Umgebung plotten können und dass wir mit zusätzlichen 
% Argumenten zur plot-Funktion den 2. und 3. Verlauf 
% mit unterschiedlichen Farben darstellen.


hold on;

% -------------  2. Durchlauf ---------------------------

pop=rand(1,N)<p;
A=zeros(ngenerations,1); 

for i=1:ngenerations
	A(i) = sum(pop); % summe der A Individuen
	ind=ceil(N*rand(1,N));
  pop=pop(ind);
end

plot(gen,A,'b--');

% -------------  2. Durchlauf ---------------------------

pop=rand(1,N)<p;
A=zeros(ngenerations,1); 

for i=1:ngenerations
	A(i) = sum(pop); % summe der A Individuen
	ind=ceil(N*rand(1,N));
  pop=pop(ind);
end

plot(gen,A,'gx-');
