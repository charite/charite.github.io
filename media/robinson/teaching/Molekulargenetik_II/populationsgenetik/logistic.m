% logistic.m
% Stellt logarithmisches Wachstum dar.
% x0 = anfängliche Dichte
% r  = Wachstumsrate
% K  = Kapazität


x0=0.1;
r=0.01;
K=1.5;

t=linspace(0,750,100); % 100 linear verteilte Punkte zw. 0 und 200
C=(K*x0)/(K-x0);
f=@(t)  C.*exp(r.*t) ./ (1 + C.*exp(r.*t)./K);
x=f(t);               % Vektoroperation, alles auf einmal!
plot(t,x,'ro-');      % plot x,y in rot ('r'), Datenpunkt als Kreise ('o')
                      % verbunden mit Linie ('-')
axis([0 750 0 2]);    % Achsen einstellen [xmin xmax,ymin ymax]
xlabel('Zeit')        % Beschriftung der X-Achse
ylabel('Wachstum')    % Beschriftung der Y-Achse
title('Logistisches Wachstum');
