# Welcome to Neko Repository

## Adding the Repository

To add the Neko repository to your system, append the following to your `/etc/pacman.conf`:

```bash
[neko]
SigLevel = Optional TrustedOnly
Server = https://raw.githubusercontent.com/Biaogo/neko-repository/main/$arch
#Server = https://raw.staticdn.net/Biaogo/neko-repository/main/$arch
```

## Importing the GPG Key

To use this repository, you need to import and sign the GPG key. Run the following commands:

```bash
sudo pacman-key --recv-keys 5B41E77518538A0DCB01779DF79B41BC02B074F4 --keyserver keys.openpgp.org
sudo pacman-key --lsign 5B41E77518538A0DCB01779DF79B41BC02B074F4
sudo pacman-key --init
```

After completing these steps, you should be able to use the Neko repository with pacman.
