# nix-shell


### Install nix before start nix-shell
https://nixos.org/nix/
```
sudo curl -L https://nixos.org/nix/install | sh

# multi user 
sh <(curl https://nixos.org/nix/install) --daemon
```

### Start nix-shell
```
wget https://raw.githubusercontent.com/ttaki/nix-shell/master/shell.nix
nix-shell shell.nix
```

### If there is no dotfiles

install https://github.com/ttaki/dotfiles-shell
```
curl https://raw.githubusercontent.com/ttaki/dotfiles-shell/master/sample/setup.sh | bash
```
