function Q_n = generate_Q_n(n)
% Generates all relevant binary codes

len = 2^(n-1);
Q_n = ones(len,n);
for j = 2:n
    skip = 2^(n-j);
    for i = 1:2*skip:len
        for k = i:i+skip-1
            Q_n(k,j) = -1;
        end
    end
end

end
