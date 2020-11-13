hold on
%a
M = 80;
alpha = 0.95;
N = 9000;
x = rand(1, M)*4.-2;
y = [];
for n = [1:N]
   y = [y, code(n, M, alpha, x)]; 
end
plot([1:N], y);
sound(y);

%b
M = 80;
alpha = 0.5;
x = rand(1, M)*4.-2;
y = [];
for n = [1:N]
   y = [y, code(n, M, alpha, x)]; 
end
figure()
subplot(2, 1, 1);
plot([1:N], y);
sound(y);
alpha = 0.98;
y = [];
for n = [1:N]
   y = [y, code(n, M, alpha, x)]; 
end
subplot(2, 1, 2);
plot([1:N], y);
sound(y);

%c
M = 80;
alpha = 0.95;
x = rand(1, M)*4.-2;
y = [];
for n = [1:20000]
   y = [y, code(n, M, alpha, x)]; 
end
figure()
subplot(2, 1, 1);
plot([1:20000], y);
sound(y);
y = [];
for n = [1:5000]
   y = [y, code(n, M, alpha, x)]; 
end
subplot(2, 1, 2);
plot([1:5000], y);
sound(y);

%d
M = 200;
alpha = 0.95;
N = 9000;
x = rand(1, M)*4.-2;
y = [];
for n = [1:N]
   y = [y, code(n, M, alpha, x)]; 
end
figure()
subplot(2, 1, 1);
plot([1:N], y);
sound(y);
M = 30;
y = [];
for n = [1:N]
   y = [y, code(n, M, alpha, x)]; 
end
subplot(2, 1, 2);
plot([1:N], y);
sound(y);

%e
alpha = 0.99;
N = 9000;
M = [70, 55, 40];
x = rand(1, M(1))*4.-2;
y1 = [];
for n = [1:N]
   y1 = [y1, code(n, M(1), alpha, x)]; 
end
x = rand(1, M(2))*4.-2;
y2 = [];
for n = [1:N]
   y2 = [y2, code(n, M(2), alpha, x)]; 
end
x = rand(1, M(3))*4.-2;
y3 = [];
for n = [1:N]
   y3 = [y3, code(n, M(3), alpha, x)]; 
end
y = [y1, y2, y3];
figure()
plot([1:3*N], y);
sound(y);

%f
y = flanger(y);
figure()
plot([1:3*N], y);
sound(y);
