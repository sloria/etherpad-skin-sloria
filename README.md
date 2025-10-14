# etherpad-skin-sloria

A stripped-down skin for [Etherpad](https://github.com/ether/etherpad-lite).

<img height="500" alt="Home page in light mode" src="https://github.com/user-attachments/assets/791f92ba-68ce-421e-9ad9-eca67e34a29f" />
<img height="500" alt="Home page in light mode" src="https://github.com/user-attachments/assets/d6d57627-5e3e-4567-98d9-4f7a420c5ba3" />
<img height="500" alt="Pad page in dark mode" src="https://github.com/user-attachments/assets/f4896511-3278-474f-bbe0-3da929def81c" />

It's based on the default colibris skin, with a few tweaks:

- Minimal home page with no "Recent Pads" list
- Uses system font
- Higher contrast dark mode

## Usage

### Method 1: Git Submodule

1. Clone this repository into your `etherpad-lite/src/static/skins` directory:

```console
git clone https://github.com/sloria/etherpad-skin-sloria.git src/static/skins/sloria
```

2. Set the skin in your `settings.json` file or as an environment variable:

```json
"skinName": "sloria"
```

```bash
export SKIN_NAME=sloria
```

### Method 2: Docker

This repo publishes a Docker image that is the same as the official Etherpad image, but with this skin installed and enabled by default.

```
docker run --name etherpad-sloria \
  -p 9001:9001 \
  -e SKIN_NAME=sloria
  ghcr.io/sloria/etherpad-skin-sloria:latest
```

Or in Docker Compose:

```yaml
name: <your project name>
services:
  etherpad:
    container_name: etherpad
    ports:
      - 9001:9001
    environment:
      - SKIN_NAME=sloria
    image: ghcr.io/sloria/etherpad-skin-sloria:latest
```
