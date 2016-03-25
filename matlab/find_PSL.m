function maximum = find_PSL(x)

N = length(x);

PSL_x = zeros(N-1,1);

for k = 1:N-1
    for i = 1:N-k
        PSL_x(k) = PSL_x(k) + x(i)*x(i+k);
    end
    PSL_x(k) = abs(PSL_x(k));
end

maximum = max(PSL_x);

end