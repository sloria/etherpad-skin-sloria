# etherpad-skin-sloria

A stripped-down skin for [Etherpad](https://github.com/ether/etherpad-lite).

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

2. Set the skin in your `settings.json` file:

```json
"skinName": "sloria"
```

<!-- ### Method 2: Docker

This repo publishes a Docker image that is the same as the official Etherpad image, but with this skin installed and enabled by default.

```
docker run --name etherpad-sloria \
  -p 9001:9001 \
  -e SKIN_NAME=sloria \
  etherpad-sloria
``` -->
