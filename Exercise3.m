
set(groot,'defaultAxesFontName','Helvetica');
set(groot,'defaultAxesFontSize',16);
set(groot,'defaultAxesTitleFontSizeMultiplier', 1.2);
set(groot,'defaultLineLineWidth', 2);
set(groot,'defaultStemLineWidth', 2);
set(groot,'defaultStemMarkerSize', 8);%exercise 3a

% Define time array
t_a = 0:0.001:1;  % Choose appropriate time interval
a_t = (0.9).^t_a .* sin(10 * pi * t_a);  % Signal a(t)

% Find peaks (maxima)
[pks, locs_max] = findpeaks(a_t, t_a);  % Find the maxima (peaks)

% Find valleys (minima)
[valleys, locs_min] = findpeaks(-a_t, t_a);  % Find the minima (valleys of -a_t)
valleys = -valleys;  % Convert back to positive values for plotting

% Find zero-crossings
zero_crossings = t_a(abs(a_t) < 1e-3);  % Approximate zero crossings

% Plot the signal
figure;
plot(t_a, a_t, 'b');  % Plot the signal a(t)
hold on;

% Mark maxima with 'x'
plot(locs_max, pks, 'rx', 'MarkerSize', 10);

% Mark minima with 'x'
plot(locs_min, valleys, 'bx', 'MarkerSize', 10);

% Mark zero crossings with 'o'
plot(zero_crossings, zeros(size(zero_crossings)), 'go', 'MarkerSize', 8);

% Labels and title
title('Signal a(t) with Maxima, Minima, and Zero Crossings');
xlabel('t');
ylabel('a(t)');

% Add legend
legend('a(t)', 'Maxima', 'Minima', 'Zero Crossings');
hold off;

% Maxima and minima
disp('Maxima times and values for a(t):');
disp(locs_max);
disp(pks);

disp('Minima times and values for a(t):');
disp(locs_min);
disp(valleys);

disp('Zero crossings for a(t):');
disp(zero_crossings);

%exercise 3b

% Define time array for t in [-2, 2]
t_b = -2:0.001:2;  % Time interval with fine resolution
b_t = sin(10 * pi * t_b) + cos(8 * pi * t_b);  % Signal b(t)

% Find peaks (maxima)
[pks_b, locs_max_b] = findpeaks(b_t, t_b);  % Find the maxima (peaks)

% Find valleys (minima)
[valleys_b, locs_min_b] = findpeaks(-b_t, t_b);  % Find the minima (valleys of -b_t)
valleys_b = -valleys_b;  % Convert back to positive values for plotting

% Find zero crossings
zero_crossings_b = t_b(abs(b_t) < 1e-3);  % Approximate zero crossings

% Plot the signal
figure;
plot(t_b, b_t, 'b');  % Plot the signal b(t)
hold on;

% Mark maxima with 'x'
plot(locs_max_b, pks_b, 'rx', 'MarkerSize', 10);

% Mark minima with 'x'
plot(locs_min_b, valleys_b, 'bx', 'MarkerSize', 10);

% Mark zero crossings with 'o'
plot(zero_crossings_b, zeros(size(zero_crossings_b)), 'go', 'MarkerSize', 8);

% Labels and title
title('Signal b(t) with Maxima, Minima, and Zero Crossings');
xlabel('t');
ylabel('b(t)');

% Add legend
legend('b(t)', 'Maxima', 'Minima', 'Zero Crossings');
hold off;

% Maxima and minima
disp('Maxima times and values for b(t):');
disp(locs_max_b);
disp(pks_b);

disp('Minima times and values for b(t):');
disp(locs_min_b);
disp(valleys_b);

disp('Zero crossings for b(t):');
disp(zero_crossings_b);

%exercise 3c

% Define n array for n in [-5, 5]
n_c = -5:5;  % Discrete time points
c_n = (-1.1).^n_c;  % Signal c[n]

% Find peaks (maxima)
[pks_c, locs_max_c] = findpeaks(c_n, n_c);  % Find the maxima (peaks)

% Find valleys (minima)
[valleys_c, locs_min_c] = findpeaks(-c_n, n_c);  % Find the minima (valleys of -c_n)
valleys_c = -valleys_c;  % Convert back to positive values for plotting

% Find zero crossings (in discrete signals, it's when the value equals 0)
zero_crossings_c = n_c(c_n == 0);

% Plot the signal
figure;
stem(n_c, c_n, 'b');  % Plot the signal c[n] using stem for discrete values
hold on;

% Mark maxima with 'x'
plot(locs_max_c, pks_c, 'rx', 'MarkerSize', 10);

% Mark minima with 'x'
plot(locs_min_c, valleys_c, 'bx', 'MarkerSize', 10);

% Initialize legend entries
legend_entries = {'c[n]', 'Maxima', 'Minima'};

% Only add zero crossings if there are any
if ~isempty(zero_crossings_c)
    plot(zero_crossings_c, zeros(size(zero_crossings_c)), 'go', 'MarkerSize', 8);
    legend_entries{end+1} = 'Zero Crossings';
end

% Labels and title
title('Signal c[n] with Maxima, Minima, and Zero Crossings');
xlabel('n');
ylabel('c[n]');

% Add legend
legend(legend_entries{:});
hold off;

% Maxima and minima
disp('Maxima times and values for c[n]:');
disp(locs_max_c);
disp(pks_c);

disp('Minima times and values for c[n]:');
disp(locs_min_c);
disp(valleys_c);

disp('Zero crossings for c[n]:');
disp(zero_crossings_c);

%exercise 3d

% Define n array for a reasonable range, say 0 to 20
n_d = 0:20;  % Discrete time points
d_n = cos((3 * pi / 8) * n_d) + cos((2 * pi / 5) * (n_d - 3));  % Signal d[n]

% Find peaks (maxima)
[pks_d, locs_max_d] = findpeaks(d_n, n_d);  % Find the maxima (peaks)

% Find valleys (minima)
[valleys_d, locs_min_d] = findpeaks(-d_n, n_d);  % Find the minima (valleys of -d_n)
valleys_d = -valleys_d;  % Convert back to positive values for plotting

% Find zero crossings (in discrete signals, it's when the value equals 0)
zero_crossings_d = n_d(d_n == 0);

% Plot the signal
figure;
stem(n_d, d_n, 'b');  % Plot the signal d[n] using stem for discrete values
hold on;

% Mark maxima with 'x'
plot(locs_max_d, pks_d, 'rx', 'MarkerSize', 10);

% Mark minima with 'x'
plot(locs_min_d, valleys_d, 'bx', 'MarkerSize', 10);

% Initialize legend entries
legend_entries = {'d[n]', 'Maxima', 'Minima'};

% Only add zero crossings if there are any
if ~isempty(zero_crossings_d)
    plot(zero_crossings_d, zeros(size(zero_crossings_d)), 'go', 'MarkerSize', 8);
    legend_entries{end+1} = 'Zero Crossings';
end

% Labels and title
title('Signal d[n] with Maxima, Minima, and Zero Crossings');
xlabel('n');
ylabel('d[n]');

% Add legend
legend(legend_entries{:});
hold off;

% Maxima and minima
disp('Maxima times and values for d[n]:');
disp(locs_max_d);
disp(pks_d);

disp('Minima times and values for d[n]:');
disp(locs_min_d);
disp(valleys_d);

disp('Zero crossings for d[n]:');
disp(zero_crossings_d);
