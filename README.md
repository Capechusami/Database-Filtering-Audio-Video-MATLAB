# 🎧📽️ Database Filtering for Audio and Video using MATLAB


---

## 📖 Overview

This repository contains a MATLAB-based implementation of **database filtering techniques for audio and video media**. The project demonstrates how digital filters can be applied to reduce noise, enhance signal quality, and analyze filtering effects on multimedia data. Both **audio filtering** and **video filtering** are implemented and evaluated using standard signal and image processing techniques.


---

## 🎯 Objectives

* Understand database filtering concepts for multimedia data
* Apply digital audio filtering techniques to reduce noise
* Perform video filtering using spatial-domain filters
* Analyze and compare original and filtered audio/video signals
* Visualize filtering effects using time, frequency, and image comparisons

---

## 🧠 Background and Theory

Filtering is a fundamental operation in multimedia processing used to remove unwanted components or enhance important features of audio and video signals.

### Audio Filtering

Digital audio filtering is typically performed in the frequency domain. A **Low-Pass Butterworth Filter** allows low-frequency components to pass while attenuating high-frequency noise. The Butterworth filter is preferred due to its smooth and flat response in the passband, making it suitable for speech and audio enhancement.

### Video Filtering

Video filtering operates on individual frames treated as images. A **Gaussian spatial filter** smooths an image by averaging pixel values based on a Gaussian distribution. This technique reduces visual noise such as grain while introducing controlled blurring, making it useful for video preprocessing and enhancement.

---

## 🛠️ Tools and Requirements

* **MATLAB**
* **Signal Processing Toolbox**
* **Image Processing Toolbox**
* Input Audio File: `ahem_x.wav`
* Input Video File: `What is Multimedia_.mp4`

### Key MATLAB Functions Used

* `audioread`, `audiowrite`, `butter`, `filter`
* `VideoReader`, `VideoWriter`
* `imgaussfilt`, `imshowpair`

---

## ⚙️ Methodology

The experiment is divided into two main parts:

### Part A: Audio Filtering

1. Load the input audio signal using `audioread`
2. Design a 4th-order low-pass Butterworth filter with a cutoff frequency of 3000 Hz
3. Apply the filter to remove high-frequency noise
4. Play and save the filtered audio output
5. Compare original and filtered signals using time-domain and frequency-domain plots

### Part B: Video Filtering

1. Load the input video using `VideoReader`
2. Process the video frame-by-frame
3. Apply Gaussian filtering with a sigma value of 2 to each frame
4. Write the filtered frames to a new output video using `VideoWriter`
5. Compare original and filtered frames visually and statistically

---

## 📊 Results and Analysis

### Audio Results

* High-frequency noise was successfully attenuated
* Filtered audio retained the original temporal structure with smoother waveform characteristics
* Frequency spectrum analysis confirmed attenuation above the 3000 Hz cutoff

---

![image alt](https://github.com/Capechusami/Database-Filtering-Audio-Video-MATLAB/blob/55ddcdd0945c75cf5a685311041aa512505d3f20/Figure%201.png)

---
![image alt](https://github.com/Capechusami/Database-Filtering-Audio-Video-MATLAB/blob/55ddcdd0945c75cf5a685311041aa512505d3f20/Figure%202.png)

### Video Results

* Gaussian filtering produced smoother video frames with reduced noise
* Fine details were averaged out, resulting in controlled blurring
* Statistical analysis showed a reduction in pixel intensity variance, confirming noise reduction

---

![image alt](https://github.com/Capechusami/Database-Filtering-Audio-Video-MATLAB/blob/55ddcdd0945c75cf5a685311041aa512505d3f20/Figure%203.png)

---

## ✅ Conclusion

This project successfully demonstrates **database filtering techniques for audio and video using MATLAB**. Low-pass Butterworth filtering effectively reduced audio noise, while Gaussian spatial filtering enhanced video quality. These techniques are essential for noise reduction, preprocessing, and quality improvement in multimedia systems.

---

## 📂 Output Files

### Audio Output

* `filtered_audio.wav`

### Video Output

* `filtered_video.mp4`

### Generated Figures

* Time-domain audio comparison
* Frequency spectrum comparison
* Original vs filtered video frame comparison

---

## 👥 Author

* Samuel Tesfachew

