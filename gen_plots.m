function [ham_dist,psl_diff] = gen_plots(n)
base = ones(n,1);
base_psl = find_PSL(base);
Q_n = generate_Q_n(n);
len = 2^(n-1);
ham_dist = zeros(len,1);
psl_diff = zeros(len,1);

for i = 1:len
    psl_diff(i) = find_PSL(Q_n(i,:)) - base_psl;
    ham_dist(i) = hamming_distance(Q_n(i,:),base);
end

end