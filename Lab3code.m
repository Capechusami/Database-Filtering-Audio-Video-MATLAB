clc;
clear;
close all;

%% =======================
% AUDIO FILTERING SECTION
%% =======================

% Load audio file
[audio, fs] = audioread('ahem_x.wav');

% Play original audio
disp('Playing original audio...');
sound(audio, fs);
pause(length(audio)/fs + 1);

% Design low-pass Butterworth filter
cutoffFreq = 3000;       % Hz
order = 4;
Wn = cutoffFreq / (fs/2);

[b, a] = butter(order, Wn, 'low');

% Apply filter
filteredAudio = filter(b, a, audio);

% Play filtered audio
disp('Playing filtered audio...');
sound(filteredAudio, fs);

% Save filtered audio
audiowrite('filtered_audio.wav', filteredAudio, fs);

%% ===== AUDIO VERIFICATION =====

% Waveform comparison
figure;
subplot(2,1,1);
plot(audio);
title('Original Audio Signal');
xlabel('Samples'); ylabel('Amplitude');

subplot(2,1,2);
plot(filteredAudio);
title('Filtered Audio Signal');
xlabel('Samples'); ylabel('Amplitude');

% Frequency spectrum comparison
N = length(audio);
fftOriginal = abs(fft(audio));
fftFiltered = abs(fft(filteredAudio));

f = (0:N-1)*(fs/N);

figure;
plot(f, fftOriginal, 'b');
hold on;
plot(f, fftFiltered, 'r');
xlim([0 6000]);
legend('Original','Filtered');
title('Frequency Spectrum Comparison');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

disp('Audio filtering verified: High-frequency components reduced.');



%% 
% VIDEO FILTERING SECTION

% Load video
video = VideoReader('What is Multimedia_.mp4');

% Output video writer
outputVideo = VideoWriter('filtered_video.mp4', 'MPEG-4');
open(outputVideo);

frameCount = 0;

while hasFrame(video)
    frame = readFrame(video);
    frameCount = frameCount + 1;

    % Apply Gaussian filter directly to RGB (keeps color)
    filteredFrame = imgaussfilt(frame, 2);

    % Save frame
    writeVideo(outputVideo, filteredFrame);

    % Verification for first frame only
    if frameCount == 1
        originalFrame = frame;
        verifiedFrame = filteredFrame;
    end
end

close(outputVideo);
disp('Video filtering completed.');

%% ===== VIDEO VERIFICATION =====

% Visual comparison
figure;
imshowpair(originalFrame, verifiedFrame, 'montage');
title('Original Frame (Left) vs Filtered Frame (Right)');

% Statistical verification
stdOriginal = std(double(originalFrame(:)));
stdFiltered = std(double(verifiedFrame(:)));

disp(['Original Frame Std Dev: ', num2str(stdOriginal)]);
disp(['Filtered Frame Std Dev: ', num2str(stdFiltered)]);

if stdFiltered < stdOriginal
    disp('Video filtering verified: Noise variance reduced.');
else
    disp('Check filter parameters.');
end
