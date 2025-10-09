# Paperwhite Clock / Weather Dashboard

This project extends [matopeto/kindle-weather-dashboard](https://github.com/matopeto/kindle-weather-dashboard) with my own layout tweaks and a persistent clock so the Kindle always shows the current time alongside weather details. All settings still live directly in `index.html`, keeping deployment lightweight for e-ink hardware.

![Kindle dashboard screenshot](Screenshot%202025-10-08%20at%209.16.28%E2%80%AFPM.png)

## Deploy to Kindle

1. Copy the project folder to the root of the Kindle storage (e.g. `/mnt/us/dashboard`).
2. Safely eject the Kindle.
3. On the Kindle, open the experimental browser and visit `file:///mnt/us/dashboard/index.html`.

The page uses JSONP to call OpenWeather and automatically falls back to HTTP if HTTPS fails, which keeps it working on older firmware.

## What’s on screen

Current temperature, description, feels-like, wind, humidity, sunrise, and sunset.  
Three upcoming forecast slots with time, temperature, and brief conditions.  
Status banner that reports the last update time or any errors.  
Everything is laid out for the Paperwhite 6th gen resolution, using only standard fonts and no third-party assets.

## Kindle setup notes

- Device: Kindle Paperwhite 2 running firmware 5.12.2.  
- Jailbreak: Followed the guide at [MobileRead](https://www.mobileread.com/forums/showthread.php?t=346037) and installed KUAL, although the jailbreak is probably not required to run this dashboard.  
- Workflow pain points: I had loads of fun and an equal amount of frustration wrangling CSS in the Kindle browser. Mounting the Kindle to copy files, unmounting to test, then mounting again for every tweak is painfully slow, and I definitely need to find a better way in the future.

## Future experiments

- Explore installing Python so the Kindle can act as a controller for my Arduino robot.

## License

You may copy, modify, and distribute this project freely. A credit or link back is appreciated but not required.

Happy hacking!
