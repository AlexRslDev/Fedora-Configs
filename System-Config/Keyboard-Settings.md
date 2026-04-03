# Keyboard Config

### Keyd

Install

```
sudo dnf copr enable alternateved/keyd
sudo dnf install keyd
```

sudo nvim /etc/keyd/default.conf

```
[ids]
*

[main]
capslock = overload(vim_arrows, leftshift)

[vim_arrows]
h = left
j = down
k = up
l = right
```

Activate

```
sudo systemctl enable --now keyd
```

To reload

```
sudo keyd reload
```
