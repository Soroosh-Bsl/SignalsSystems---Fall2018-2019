function y= flanger(x)
    delay = 12;
    range = 20;
    sweep_freq = .45;
    fs = 44100;

    y = zeros(size(x));

    for i = 1:length(x)-delay-range
        y(i) = x(i) + x(i+delay+round(range*sin(2*pi*i*sweep_freq/fs)));
    end
end
