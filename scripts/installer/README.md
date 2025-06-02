first execute the ./dependencies.sh script with sudo access
```bash
sudo ./dependencies.sh
```

you probably know the deal put this folder or its parent in your PATH
like this

```bash
export PATH=$HOME/.config/scripts:$PATH
```

then so you can execute this without being log as a sudo user

```bash
sudo gpasswd -a <username> sudo
```

after this you can remove it
```bash
sudo gpasswd -d <username> sudo
```

# TODO
create folder of optionals and to install each one use a flag for all or a flag that lets you choose or pass the names

add some exclude list or categories so I can install a full category and exclude specific files
also support passing multiple filters

automatically add fonts

- thunderbird
- anicli
- droidcam
- some stuff into the .bashrc

maybe android studio? maybe in some kind of optional folder
