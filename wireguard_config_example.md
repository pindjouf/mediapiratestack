# Setting Up Wireguard
Once you've installed wireguard you can either set it up [manually](https://www.wireguard.com/quickstart/#command-line-interface) or use [pivpn](https://www.pivpn.io/) as an easier alternative.

Here's what your config file should look like:
---
**[Interface]**\
Address = 10.145.16.9/24\
PrivateKey = fGU3YoHmVYtGnaSsKX2eTi6Z06No4BwcSw2jzA1X2aZ=\
DNS = 1.1.1.1, 1.0.0.1

**[Peer]**\
PublicKey = IATY9j5PVlNxbJXXj7YiOQOyXijykotSiohgY9ZLYz0=\
PresharedKey = PclEs511E1/9Tlrg+nIhWbNofx+0eIgPvFIOzkLDYBc=\
Endpoint = acrobat.duckdns.org:51820\
AllowedIPs = 0.0.0.0/0, ::/0
___
**Notes:**

- The endpoint is supposed to be your public IP, but you can also use a domain that links to it like I did here.
- The config file is identical in the host and client.
- You can also link your PrivateKey in another file by using `PostUp = wg set %i private-key /etc/wireguard/%i.privkey` instead of `PrivateKey = fGU3YoHmVYtGnaSsKX2eTi6Z06No4BwcSw2jzA1X2aZ=`
- Here's a link to [duckdns](https://www.duckdns.org/) if you want to use a domain like me.
- You can have multiple peers.

Once everything is set up you should be able to start your connection with `wg-quick up wg0` and to close it, replace `up` with `down`
