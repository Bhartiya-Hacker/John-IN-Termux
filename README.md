# John-IN-Termux
This Script will install John the Ripper in termux... :)

# Before

==> In order to have updated Termux:-

- Install latest Termux version from [F-Droid](https://f-droid.org/en/packages/com.termux/) (Version on Play Store is OUTDATED & NOT-SUPPORTED ANYMORE)

- Then launch Termux to initialization,

- Reopen and follow the instructions below.. :)



Dependecies that This Script will Install:-

* wget
* perl
* clang
* build-essential
* make

# Auto Installation:-

```bash
source <(curl -fsSL https://raw.githubusercontent.com/Bhartiya-Hacker/John-IN-Termux/master/john.sh)
```

# Mannual Installation:-

```bash
wget https://github.com/Bhartiya-Hacker/John-In-Termux/raw/master/john.sh
chmod +x john.sh
bash john.sh
```

# That's It... (-_-)

#After the installation, Execute john by:- 

```bash
./john/run/john --help
```
