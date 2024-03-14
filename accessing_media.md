# Accessing Media

If you're just gonna be using the server for media, I recommend using [osmc](https://osmc.tv/) or [libreelec](https://libreelec.tv/) as your operating system. They're really small and they come with [kodi](https://kodi.tv/) preinstalled so it's the most frictionless way to gather everything in the same spot.

They also make it really easy to set up stuff like ftp, ssh, torrenting clients etc...\
And if you're planning on using this with a traditional tv, there's really no beating [kodi](https://kodi.tv/) in my opinion.

If not, then I recommend using [Jellyfin](https://jellyfin.org/) since it has a really nice web interface, mobile apps & the setup is similar to the services mentionned in [downloading_media.md](https://github.com/pindjouf/mediapiratestack/blob/main/downloading_media.md).

If you just wanna go straight to the files and you plan on organizing everything neatly in directories and/or don't care for a pretty interface then I suggest downloading some media player like [VLC](https://www.videolan.org/).

You can then just mount sftp like this:\
`gio mount sftp://your_server_ip` which will allow you to browse the whole system with your chosen media player.

