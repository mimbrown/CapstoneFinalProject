s = 1:13;
count = zeros(13);

for n = 1:13
    count(n) = find_Barker(n);
end

plot(s,count)