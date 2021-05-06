if [ -e /home/matt/.nix-profile/etc/profile.d/nix.sh ]; then . /home/matt/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
eval "$(direnv hook zsh)"
export NIX_PAGER="less -F"
