function [a,b,ab] = doubledigest(A,B,AB)
%function doubledigest(A,B,AB)
%A: Set of fragment lengths from digestion by restriction enzyme A
%B: Set of fragment lengths from digestion by restriction enzyme B
%AB: Set of fragment lengths following double digestion by both A & B
%returns [a,b,ab] a permutation (order) compatible with data
%assumption: Each fragment length in A and B is distinct (not necessarily 
%            true but OK for this demonstration program)

pA=perms(A); % all permutations of A
pB=perms(B);
pAB=perms(AB);

for i=1:length(pA)
    for j=1:length(pAB)
        if compatible(pA(i,:),pAB(j,:))
            for k=1:length(pB)
                if compatible(pB(k,:),pAB(j,:))
                    a=pA(i,:);
                    b=pB(k,:);
                    ab=pAB(j,:);
                    return;
                end
            end
        end
    end
end
% If we get here, no compatible combination was found
% return an error message and terminate function
error('No compatible order of restriction sites was found');


function c = compatible(x,ab)
% x is vector of fragment lengths from single digest (A or B)
% ab is a vector of fragment lengths from double digestion
% return c=1 if compatible, c=0 if not compatible

cAB=cumsum(ab);
cX=cumsum(x);
% If x is compatible with AB then the cumulative sum of lengths will
% be a subset of the cumulative sum of lengths of the double digestion
% mem=ismember(i,j) returns a vector as long as i with elements
%   mem(x)=1 if i(x) is a member of j and mem(x)=0 otherwise
mem=ismember(cX,cAB);
% If compatible, mem has all 1. Then the sum of the elements is equal 
% to the length
c = sum(mem)==length(mem);
return;