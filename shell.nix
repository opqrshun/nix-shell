with (import <nixpkgs> {});

let

  packages=with pkgs; [
    bat
    broot
    cloc
    exa
    fd
    fzf
    git
    htop
    neofetch
    nkf
    neovim
    nmap
    procs
    ranger
    ripgrep
    tmux
    tig
    tldr
    zsh
  ];

  language=with pkgs; [
    python38
    nodejs
    yarn
    go

  ];

  devtools=with pkgs; [
    shellcheck
    lazygit
    lazydocker
    docker
    docker-compose
  ];

in

pkgs.mkShell {
  buildInputs = [
    packages
    language
    devtools
  ];

  shellHook =
    ''
      echo "Hello shell"
      zsh
    '';
}

