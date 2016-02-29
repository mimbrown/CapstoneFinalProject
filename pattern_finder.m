close all; clear all;

start = 2;
finish = 13;
size = finish-start+1;
cols = ceil(sqrt(size));
rows = ceil(size/cols);

for n = start:finish
    [ham_dist,psl_diff] = gen_plots(n);
    subplot(rows,cols,n-start+1), plot(ham_dist,psl_diff,'rx')
end