% logphase.m
% stellt die logarithmische Wachstumsphase von Bakterien in 
% Kultur dar.

% x0 = anfängliche Dichte von Bakterien
% r  = Wachstumsrate

x0 = 1.0;
r =0.01;
t = linspace(0,200,10);  % 10 linear verteilte Punkte zw. 0 und 200

lnx = log(x0) + r*t;    % Vektoroperation, alles auf einmal!

plot(t,lnx,'ro-');   % plotx, y in rot('r'), Datenpunkte als Kreise ('o')
	                   % verbunden mit Linie ('-')
axis([ 0 300 0 3]); % Achsen einstellen [xmin xmax ymin ymax]
xlabel('Zeit');      % Beschriftung der X-Achse
ylabel('Wachstum');
title('Logarithmische Wachstumsphase');

