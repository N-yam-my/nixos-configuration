# Installation
## NixOS on WSL2
```shell-session
$ nix-shell -p gitMinimal
$ git clone https://github.com/N-yam-my/nixos-configuration ~/.dotfiles
$ cd ~/.dotfiles
$ sudo nixos-rebuild switch --extra-experimental-features 'flakes nix-command' --flake .#nyammy --show-trace
```
# Commands
## nixos modules; for global level
if flakes not enabled:
```shell-session
$ sudo nixos rebuild switch
```
if flakes enabled:
```shell-session
$ cd ~/.dotfiles
$ git add .
$ sudo nixos rebuild switch --flake .#G83HS
```
## home-manager; for user level
```shell-session
$ cd ~/.dotfiles
$ git add .
$ home-manager switch --flake .#nyammy
```
## nvfetcher; for plugins not included in nixpkgs
```shell-session
$ nix run nixpkgs#nvfetcher --  --commit-changes
$ git push origin main
```

