# 🏴‍☠️ Media Pirate Stack

Blazingly fast media server setup using Docker, with a solid docker compose template.

## 🚀 Features

- **Jellyfin**: Your media streaming powerhouse
- **Transmission**: Lightning-fast torrent client
- **Prowlarr**: The next-gen indexer manager
- **The *arr Stack**:
  - Sonarr: TV shows automation
  - Radarr: Movies on autopilot
  - Lidarr: Music collection manager
  - Readarr: Books & Audiobooks hunter
- **Jellyseerr**: Netflix-style request system for your crew
- **Homarr**: Your beautiful dashboard to rule them all

## 🏃‍♂️ Quick Start

1. Clone this repo:

```bash
git clone https://github.com/yourusername/media-pirate-stack
cd media-pirate-stack
```

2. Spin up your fleet:

```bash
docker compose up -d
```

That's it! Your services will be available at:
- Homarr: `http://localhost:7575`
- Jellyfin: `http://localhost:8096`
- Jellyseerr: `http://localhost:5055`
- Transmission: `http://localhost:9091`
- Prowlarr: `http://localhost:9696`
- Sonarr: `http://localhost:8989`
- Radarr: `http://localhost:7878`
- Lidarr: `http://localhost:8686`
- Readarr: `http://localhost:8787`

## 📁 Directory Structure

Everything is organized under one volume:

```
mediapirate_data/
├── media/
│   ├── movies/
│   ├── tv/
│   ├── music/
│   └── books/
├── downloads/
├── watch/
└── config/
    ├── jellyfin/
    ├── transmission/
    ├── prowlarr/
    ├── sonarr/
    ├── radarr/
    ├── lidarr/
    ├── readarr/
    └── jellyseerr/
```

## 🔧 Configuration

1. Each service stores its config in `mediapirate_data/config/<service-name>`
2. All downloads go to `mediapirate_data/downloads`
3. Media is organized in `mediapirate_data/media/<type>`
4. Set up Prowlarr first, then connect your *arr services
5. Point Jellyfin to your media folders
6. Configure Jellyseerr to work with Jellyfin

## 🛡️ Security

- All services run with PUID/PGID 1000 (configurable in docker-compose.yml)
- Single network `mediapirate_net` for inter-container communication
- Jellyfin runs in host network mode for better performance

## ⚠️ Disclaimer

This stack is for educational purposes only. The author does not condone or promote piracy. Users are responsible for ensuring compliance with their local laws and regulations regarding media consumption and distribution.

## License

This *project* is licensed under the WTFPL License - see the [LICENSE](LICENSE) file for details.
