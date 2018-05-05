# firefox-docker

Run firefox in docker

## Getting started
```bash
docker build -t firefox .
./firefox.sh
```

## Features
- Runs with your user id so you can share folder without permissions problems
- Audio with Pluseaudio works
- You can use your GTK theme by changing `GTK_THEME` in `firefox.sh`
- Hardware acceleration (DRI)
