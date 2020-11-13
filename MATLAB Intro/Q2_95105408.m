x = -2*pi:pi/100:2*pi;
f = 4*sin(x) + cos(x);
g = sin(x) - 2*cos(x);
figure(1)
plot(x, f, '--', x, g, '*');
legend('f', 'g');
xlim([-2*pi 2*pi]);
ylim([-4.5 4.5]);
xlabel('-2pi < x < 2pi');
ylabel('f and g values');
grid
hold on

h = hFunc(x);
figure(2)
plot(x, h, '+');
xlim([-4 4]);
ylim([-6 6]);
xlabel('-4 < x < 4');
legend('h');
ylabel('function value');
grid

function y = hFunc(input)
    y = [];
    for any = input
        if (any < -0.5*pi)
            y = [y, any + 0.5*pi];
        elseif ((-0.5*pi <= any) && (any <= 0.5 *pi))
            y = [y, cos(any)];
        else
            y = [y, -any + 0.5*pi];
        end
    end
end

