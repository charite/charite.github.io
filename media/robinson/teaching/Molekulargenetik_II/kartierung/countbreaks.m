function b = countbreaks(data,order)
% n = countbreaks(clones)
% clones is a cell array denoting presence/absence of markers
% '0': absent '1': present, '?': unknown or not done
% example: 
% data = { 
%{ '0' '0' '0' '0' '0' '1' '0' '0' '0' '0' '0' '0' '1' '1' }
%{ '1' '?' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' }
%}
% order is a permutation of the orders.
%The function returns b, the minimum number of obligate breaks
% needed to explain results in a radiation hybdrid experiment


% data{i}(j) gets the j^th element of row i.

b=0;

N=size(data,1); % number of hybrid cell lines
M=size(data{1},2); % number of markers per cell line (assumed equal for 
                   % all cell lines)



for i=1:N
     current = data{i}(order(1));    % first marker for cell line i 
    for j=2:M 
        ind = order(j); % current index in permutation
        if (~strcmp(current,data{i}(ind)) && ~strcmp(current,'?'))  % this is an obligate break
            b = b+1;
        end
        if (~ strcmp(data{i}(ind),'?'))
            current = data{i}(ind);
        end
        j=j+1;
    end
end
%When we get here, b is the number of minimum obligate breaks
return;