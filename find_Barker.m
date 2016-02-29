function [count, barker] = find_Barker(n)
% Finds the barker codes of length n
tic
Q_n = generate_Q_n(n);
barker = zeros(1,n);
toc
count = 0;
for i = 1:2^(n-1)
    temp = find_PSL(Q_n(i,:));
    if(temp == 1)
        count = count+1;
        barker(count,:) = Q_n(i,:);
    end
end
toc
end