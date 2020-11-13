x = 0.6;
y = 2.5416;
z = [sin(x), cos(y)];
A = sum(z .* z);

B = 0:19;
for i = 3:20
    B(i) = B(i-1) + B(i-2);
end

C = 4:-0.1:-4;

D = [2, 4, 8, 16, 32;];

for i = 2:5
    D = [D; 2 .* D(i-1, 1:5)];
end

E = [];
for i = 1:2:5
    E = [E; D(i, 1:2:5)];
end

F_ones = ones(9, 9);
F_zeros = diag([1, 2, 3, 5, 7, 11, 13, 17, 19], 0);
F = F_ones + F_zeros;

G = rand(4, 7);

H = diag([1:5]- 2) + triu(2 .* ones(5, 5));

hSum = sum(H);

I = rand(6, 6);
I(find(I < 0.5)) = 0;
I(find(I >= 0.5)) = 1;

disp(A)
disp(B)
disp(C)
disp(D)
disp(E)
disp(F)
disp(G)
disp(H)
disp(hSum)
disp(I)
