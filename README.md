# etherpad-skin-sloria

A stripped-down skin for [Etherpad](https://github.com/ether/etherpad-lite).

<img height="400" alt="Light mode" src="https://github.com/user-attachments/assets/0ce2b967-0730-418c-8f20-e048fd9a76f7" />
<img height="400" alt="Dark mode" src="https://github.com/user-attachments/assets/242d93a0-9e4d-4af9-831d-1ba42c6dc4a9" />
<img height="400" alt="Dark mode pad page" src="https://github.com/user-attachments/assets/3b1266eb-5a7d-4e5b-9895-8e2275c5b226" />

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
    image: ghcr.io/sloria/etherpad-skin-sloria:latest
```

## Development

Clone this repo.

````
git clone https://github.com/sloria/etherpad-skin-sloria.git
cd etherpad-skin-sloria
```

Build and run the Docker image locally:

```bash
docker build -t etherpad-skin-sloria-dev . && docker run --rm -p 9001:9001 -e SKIN_NAME=sloria etherpad-skin-sloria-dev
````

View it in your browser at http://localhost:9001.
