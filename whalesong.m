% Step 1: Load the audio file
[y, fs] = audioread('whalesong.mp3');

% Step 2: Compute the length of the song (in seconds)
length_of_song = length(y) / fs;

% Step 3: Create the time axis for plotting the full whale song
t = (0:length(y)-1) / fs;

% Plot the entire whale song
figure;
plot(t, y);
title('Whale Song Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 4: Find the maximum magnitude and its time index
[max_magnitude, max_idx] = max(abs(y));  % Find the maximum absolute value
timestamp_of_max = t(max_idx);  % Get the time of the maximum

% Display the maximum magnitude and its timestamp
disp(['Maximum magnitude: ', num2str(max_magnitude)]);
disp(['Timestamp of maximum: ', num2str(timestamp_of_max)]);

% Step 5: Extract the 2-second clip between t = 31s and t = 33s
start_time = 31;
end_time = 33;
clip_indices = round(start_time * fs):round(end_time * fs);
clip = y(clip_indices);
t_clip = t(clip_indices);

% Plot the 2-second clip
figure;
plot(t_clip, clip);
title('Whale Call Clip (31s to 33s)');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 6: Compute the energy of the 2-second clip
energy_clip = sum(clip.^2) / fs;

% Display the energy of the clip
disp(['Energy of the 2-second clip: ', num2str(energy_clip)]);

% Fill in the table values (you can copy these into your report)
disp(['Sampling rate (kHz): ', num2str(fs / 1000)]);
disp(['Length of song (s): ', num2str(length_of_song)]);
disp(['Energy of the 2-second clip: ', num2str(energy_clip)]);
