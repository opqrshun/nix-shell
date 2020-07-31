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
  ];

  devtools=with pkgs; [
    shellcheck
    lazygit
    lazydocker
    mariadb
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
