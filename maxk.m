function [b,i] = maxk(a, k)
%MAXK (a, k) Returns the k largest values from a. Returns values(b) and
%indices (i)

[b,i] = sort(a,'descend');
if(k>length(b))
    k=length(b);
end
b = b(1:k);
i = i(1:k);

end