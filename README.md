# Installation
## NixOS on WSL2
```shell-session
$ nix-shell -p gitMinimal
$ git clone https://github.com/N-yam-my/nixos-configuration
$ sudo nixos-rebuild switch --extra-experimental-features 'flakes nix-command' --flake .#nyammy --show-trace
```
# Commands
## NixOS Modules
if flakes not enabled:
```shell-session
$ sudo nixos rebuild switch
```
if flakes enabled:
```shell-session
$ sudo nixos rebuild switch --flake .#G83HS
```
## Home Manager
```shell-session
$ home-manager switch --flake .#nyammy
```
