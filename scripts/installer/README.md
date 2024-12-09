you probably know the deal put this folder or its parent in your PATH
like this

```bash
export PATH=$HOME/.config/scripts:$PATH
```

then so you can execute this without being log as a sudo user

first for security reasons prevent writes to your scripts
```bash
chown root /absolute/path/to/your/script.sh
chmod 700 /absolute/path/to/your/script.sh
```

you can also try this two commands
```bash
find ./installers-scripts/ -type f -executable | xargs realpath | xargs -I "sudo chown root {}"
```
```bash
find ./installers-scripts/ -type f -executable | xargs realpath | xargs -I "sudo chmod 700 {}"
```

Verify that noone except root can replace the script, by modifying the access rights of the parent folder
```bash
chown root /absolute/path/to/your/
chmod 755 /absolute/path/to/your/
```

Modify sudo access rights in /etc/sudoers with visudo:
```sudoers
ALL    ALL = (root) NOPASSWD: /absolute/path/to/your/script.sh
```

to get all of them execute
```bash
find ./installers-scripts/ -type f -executable | xargs realpath | sed -e 's/^/ALL    ALL = (root) NOPASSWD: /' > sudoers.txt
```
and copy them from sudoers.txt

now this should work as intended


# TODO

add some exclude list or categories so I can install a full category and exclude specific files
also support passing multiple filters

automatically add fonts

nodejs and from npm
- tldr
- degit


maybe android studio? maybe in some kind of optional folder
