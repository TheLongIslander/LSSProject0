
set(groot,'defaultAxesFontName','Helvetica');
set(groot,'defaultAxesFontSize',16);
set(groot,'defaultAxesTitleFontSizeMultiplier', 1.2);
set(groot,'defaultLineLineWidth', 2);
set(groot,'defaultStemLineWidth', 2);
set(groot,'defaultStemMarkerSize', 8);
%Exercise 4

% S%simulation setup
fsim = 5000;  % Choose a sampling rate (1000 Hz initially)
deltasim = 1/fsim;  % Time step based on sampling rate


%exercise 4a


% Time array for t from 0 to 1 second
t_a = 0:deltasim:1;

% Function to integrate: cos^2(120 * pi * t)
f_a = cos(120 * pi * t_a).^2;

% Approximate the integral using the Riemann sum
A = sum(f_a) * deltasim;

% Display the result
disp('Integral A:');
disp(A);

%exercise 4b

% Time array for t from 0 to 1 second
t_b = 0:deltasim:1;

% Function to integrate: cos(120 * pi * t) * sin(120 * pi * t)
f_b = cos(120 * pi * t_b) .* sin(120 * pi * t_b);

% Approximate the integral using the Riemann sum
B = sum(f_b) * deltasim;

% Display the result
disp('Integral B:');
disp(B);

%exercise 4c

% Time array for t from 3 to 5 seconds
t_c = 3:deltasim:5;

% Function to integrate: (e^(-0.5 * t) + 2 * e^(-t)) * cos(60 * pi * t)
f_c = (exp(-0.5 * t_c) + 2 * exp(-t_c)) .* cos(60 * pi * t_c);

% Approximate the integral using the Riemann sum
C = sum(f_c) * deltasim;

% Display the result
disp('Integral C:');
disp(C);

%exercise 4d

% Time array for t from 0 to 2 seconds
t_d = 0:deltasim:2;

% Function to integrate: cos(6 * pi * t) * cos(6 * pi * (t - 1/5))
f_d = cos(6 * pi * t_d) .* cos(6 * pi * (t_d - 1/5));

% Approximate the integral using the Riemann sum
D = sum(f_d) * deltasim;

% Display the result
disp('Integral D:');
disp(D);