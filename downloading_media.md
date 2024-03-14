# Downloading Media

When you're ready to download I suggest you run all the download related services like:
- Torrenting client = [Transmission](https://transmissionbt.com), [qBittorrent](https://www.qbittorrent.org/)
- Media Finder Interface = [Radarr](https://radarr.video/), [Sonarr](https://sonarr.tv/), [Lidarr](https://lidarr.audio/)
- API support for torrent trackers = [Jackett](https://github.com/Jackett/Jackett)

on startup it'll make the whole experience smoother.\
Read below for the setup of each service.

## Torrenting Client Setup

There's not much to do here except making sure it runs on startup. You can access the web interface on port 9091.

## Media Finder Setup

There are three important things to do here:

- Go to [your_server_ip:7878/settings/mediamanagement]() and choose where you want your files to be downloaded.
- Go to [your_server_ip:7878/settings/indexers]() and setup the indexer(s) you want to use. you get the api key and tornzab feed/URL from [Jackett](https://github.com/Jackett/Jackett)
- Go to [your_server_ip:7878/settings/downloadclients]() and put in the download client you want to use.

Of course you can add more things to make your config more enjoyable but this is the basic setup to get the necessary things working.

The ports for the three services I've mentioned above are:

- Radarr = 7878
- Sonarr = 8989
- Lidarr = 8686
- Jackett = 9117

Torrent trackers I recommend in case you don't have any:

- torrentz2
- thepiratebay

**Endnote**\
If the service is not finding the media for you, don't forget you can always go to interactive search and select the file you want yourself.