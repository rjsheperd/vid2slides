# vid2slides

`vid2slides` is a utility to extract slides from videos. It can extract slides taken from videos posted to YouTube, recorded from Zoom, Google Meet, etc. It integrates OCR functionality to recognize what's inside the slides. You can use it to:

* Generate chapters for a YouTube video containing slides.
* Generate a GIF of key slides within a video.
* Generate an OCR'ed PDF from a video containing slides.

## Demo

This gif was generated by applying vid2slides to [this video]().

![]()

[This PDF was generated for the same video]().

## Installation

`video-to-slides` requires command line utils that only work on Unix (Linux/Mac). Installation via `conda`:

* Clone this repo. 
* `cd vid2slides`
* `conda env create -f environment.yml`
* `conda activate vid2slides`

## Usage

cd into the `vid2slides` directory, and run:

`python vid2slides.py input_vid output_json`

The result is an output json file that contains info about slides extract from the video.

Use the resulting json file to create a YouTube playlist, or use one of the two utils:

`python slides2pdf.py input_json output_pdf`
`python slides2gif.py input_json output_gid`

## How it works

* Extract thumbnails via ffmpeg
* Detect changes in slides using a hidden Markov model (HMM).
* Detects a crop frame around slides using OpenCV
* Uses Tesseract for OCR