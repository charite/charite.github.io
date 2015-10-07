function or = find_order(rad_hybrid_data)
% or = find_order(rad_hybrid_data)
% Find an optimal order for radiation hybrid data based on the
% minimal obligate breaks criterion
% rad_hybrid_data: A cell array of cell arrays containing the data
% each array corresponds to one cell line
% each element in an array corresponds to one marker being tested
% '1' marker present, '0' marker absent, '?' unknown/not done
% Example:
% chrABC = { 
%{ '0' '0' '0' '0' '0' '1' '0' '0' '0' '0' '0' '0' '1' '1' }
%{ '1' '?' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' }
%}
%chrABC contains results for two cell lines with 14 markers each. The
% second marker could not be determined for the second cell line, so that
% a '?' is entered.
% returns or, an optimal ordering

Ncell_lines = size(rad_hybrid_data,1);
Nmarkers = size(rad_hybrid_data{1},2); % get number of elements for first
                                       % cell line. Assume equal for all
                                       % cell lines tested.
if (Nmarkers > 10)
    error(sprintf('Number of markers %d too high for brute force',Nmarkers))
end
if (Nmarkers<2)
    error(sprintf('Error: at least two marker must be given (found %d)',Nmarkers));
end

P = perms(1:Nmarkers);
Nperms = size(P,1);

% initialize with large number
minbreaks = Nmarkers*Ncell_lines+2;

or = [];

for i=1:Nperms
    % Calculate number of breaks for current permutation P(i,:)
    b = countbreaks(rad_hybrid_data,P(i,:));
    if (b<minbreaks)
        minbreaks=b;
        or = P(i,:);
    elseif (b==minbreaks)
        or = [or ; P(i,:)];
    end
    disp([int2str(i) ') Mininum breaks: ' int2str(minbreaks) ', current breaks ' int2str(b)]);
end
    