set(groot,'defaultAxesFontName','Helvetica');
set(groot,'defaultAxesFontSize',16);
set(groot,'defaultAxesTitleFontSizeMultiplier', 1.2);
set(groot,'defaultLineLineWidth', 2);
set(groot,'defaultStemLineWidth', 2);
set(groot,'defaultStemMarkerSize', 8);

% exercise 1a
n_a = -4:11;
a_n = (3/2) * cos((3*pi/8) * n_a);
figure;
stem(n_a, a_n);
title('a[n] = (3/2) * cos((3*pi/8)*n)');
xlabel('n');
ylabel('a[n]');

%exercise 1b

n_b = 0:8;
b_n = 3 * (0.8).^(n_b - 3);
figure;
stem(n_b, b_n);
title('b[n] = 3 * (0.8)^{n-3}');
xlabel('n');
ylabel('b[n]');

%exercise 1c

n_c = 0:15;
a_n_c = (3/2) * cos((3*pi/8) * n_c);
b_n_c = [3 * (0.8).^(n_c(1:9) - 3), zeros(1, 7)];  % Zero-padding b[n] for n > 8
c_n = a_n_c + b_n_c;
figure;
stem(n_c, c_n);
title('c[n] = a[n] + b[n]');
xlabel('n');
ylabel('c[n]');


%exercise 1d

Fs_d = 40e3;  % Sampling rate 40 kHz
t_d = 0:1/Fs_d:5e-3;  % Time from 0 to 5 ms
x_t = 1000 * cos(880 * pi * t_d);
figure;
plot(t_d * 1000, x_t);  % Plot in milliseconds
title('x(t) = 1000 * cos(880*pi*t)');
xlabel('t (ms)');
ylabel('x(t)');

%exercise 1e

Fs_e = 50;  % Sampling rate 50 Hz
t_e = 0:1/Fs_e:4;  % Time from 0 to 4 seconds
y_t = (t_e >= 1) .* (t_e <= 2) .* t_e;  % Applying the condition for 1 <= t <= 2
figure;
plot(t_e, y_t);
title('y(t) = t for 1 <= t <= 2');
xlabel('t (s)');
ylabel('y(t)');

%exercise 1f

Fs_f = 1.2e3;  % Sampling rate 1.2 kHz
t_f = -3:1/Fs_f:3;  % Time from -3 to 3 seconds
z_t = (1.2).^t_f .* sin(10 * pi * t_f);
figure;
plot(t_f, z_t);
title('z(t) = (1.2)^t * sin(10*pi*t)');
xlabel('t (s)');
ylabel('z(t)');
