set(groot,'defaultAxesFontName','Helvetica');
set(groot,'defaultAxesFontSize',16);
set(groot,'defaultAxesTitleFontSizeMultiplier', 1.2);
set(groot,'defaultLineLineWidth', 2);
set(groot,'defaultStemLineWidth', 2);
set(groot,'defaultStemMarkerSize', 8);

%exercise 2a

n_c = 0:15;
a_n_c = (3/2) * cos((3*pi/8) * n_c);
b_n_c = [3 * (0.8).^(n_c(1:9) - 3), zeros(1, 7)];  % Zero-padding b[n] for n > 8
c_n = a_n_c + b_n_c;

% Window between n = 5 and n = 10
window_c = (n_c >= 5) & (n_c <= 10);
c_n_windowed = c_n .* window_c;

figure;
stem(n_c, c_n_windowed, 'r');
hold on;
stem(n_c, c_n, 'b--');
hold off;
title('Windowed c[n] between n = 5 and n = 10');
xlabel('n');
ylabel('c[n]');
legend('Windowed c[n]', 'Original c[n]');

%exercise 2b

Fs_d = 40e3;  % Sampling rate 40 kHz
t_d = 0:1/Fs_d:5e-3;  % Time from 0 to 5 ms
x_t = 1000 * cos(880 * pi * t_d);

% Window between t = 2 ms and t = 3 ms
window_x = (t_d >= 2e-3) & (t_d <= 3e-3);
x_t_windowed = x_t .* window_x;

figure;
plot(t_d * 1000, x_t_windowed, 'r');  % Plot in milliseconds
hold on;
plot(t_d * 1000, x_t, 'b--');
hold off;
title('Windowed x(t) between t = 2 ms and t = 3 ms');
xlabel('t (ms)');
ylabel('x(t)');
legend('Windowed x(t)', 'Original x(t)');

%exercise 2c

Fs_f = 1.2e3;  % Sampling rate 1.2 kHz
t_f = -3:1/Fs_f:3;  % Time from -3 to 3 seconds
z_t = (1.2).^t_f .* sin(10 * pi * t_f);

% Window between t = 0 s and t = 2 s
window_z = (t_f >= 0) & (t_f <= 2);
z_t_windowed = z_t .* window_z;

figure;
plot(t_f, z_t_windowed, 'r');
hold on;
plot(t_f, z_t, 'b--');
hold off;
title('Windowed z(t) between t = 0 s and t = 2 s');
xlabel('t (s)');
ylabel('z(t)');
legend('Windowed z(t)', 'Original z(t)');


