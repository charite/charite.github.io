% gdrift.m
% Genetische Drift simulieren
% s. Skript f�r Erkl�rungen

N=100; % Populationsgr��e
p=0.5; % Anteil Typ A in Population
ngenerations = 200;


% Initialisiere Vektor mit Werten f�r N Individuen in 
% der Population: Allel A: 1, Allel a: 0
pop=rand(N,1)<p;



A=zeros(ngenerations,1);% Vektor mit Anzahl von Allel A Individuen

for i=1:ngenerations
	
	A(i) = sum(pop); % summe der A Individuen

	% N*rand(1,N) multipliziert
	% jedes Element von rand(1,N) mal
	% die Populationsgr��e N
	% ceil umwandelt diese Zahlen in die
	% n�chstgr��eren Ganzzahlen
	% Das Ergebnis ist ein Vektor von Ganzzahlen,
	% die als Index f�r einen 1xN Vektor dienen
	
	
	 ind=ceil(N*rand(N,1));

  %Die Population in Generatiobn i+1 wird von
  %zuf�llig ausgew�hlten Eltern in der Generation i
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


% Im folgenden wird der oben aufgef�hrter Code noch zweimal
% ausgef�hrt, um zwei weitere zuf�llige Verl�ufe zu generieren.
% Merke dass wir mit 'hold on' zus�tzliche Daten in der aktuellen
% figure-Umgebung plotten k�nnen und dass wir mit zus�tzlichen 
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
