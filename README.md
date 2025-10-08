# Paperwhite Weather Dashboard

Minimal weather dashboard built specifically for the Kindle Paperwhite (6th gen).  
All settings live directly in `index.html`, so you can keep the codebase small and copy it straight to the device.

## Configure

Open `index.html` and adjust the constants near the top:

| Constant          | Purpose                                                       |
|-------------------|---------------------------------------------------------------|
| `LATITUDE`/`LONGITUDE` | GPS coordinates for the location you want to track          |
| `LOCATION_NAME`   | Friendly label shown in the header                            |
| `APP_ID`          | Your OpenWeather API key                                      |
| `UNITS`           | `"metric"` (default) or `"imperial"`                          |
| `REFRESH_INTERVAL`| Time between updates in milliseconds (defaults to 30 minutes) |

No other files need to change for a different city or unit system.

## Deploy to Kindle

1. Copy the project folder to the root of the Kindle storage (e.g. `/mnt/us/weather`).
2. Safely eject the Kindle.
3. On the Kindle, open the experimental browser and visit `file:///mnt/us/weather/index.html`.

The page uses JSONP to call OpenWeather and automatically falls back to HTTP if HTTPS fails, which keeps it working on older firmware.

## What’s on screen

- Current temperature, description, feels-like, wind, humidity, sunrise, and sunset.
- Three upcoming forecast slots with time, temperature, and brief conditions.
- Status banner that reports the last update time or any errors.

Everything is laid out for the Paperwhite 6th gen resolution, using only standard fonts and no third-party assets.

## Development notes

- The Kindle browser exposes only a subset of modern APIs—`fetch` and `Promise` are not used.
- JSONP requests time out after 15 seconds and automatically retry over HTTP.
- Adjust typography in `css/kindle.css` if you run a different Kindle model.

Happy hacking!
