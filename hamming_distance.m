function d = hamming_distance(x,y)
n = length(x);
d = 0;

for i = 1:n
    if(x(i) ~= y(i))
        d = d + 1;
    end
end

end