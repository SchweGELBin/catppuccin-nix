{ lib, pkgs, ... }:

{
  imports = [
    ../home-manager
    ./common.nix
  ];

  xdg.enable = true;

  home = {
    username = lib.fileContents ./username.txt;
    stateVersion = lib.mkDefault "23.11";
  };

  manual.manpages.enable = lib.mkDefault false;

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
  };

  catppuccin = {
    firefox.profiles.test = { };
    librewolf.profiles.test = { };
    floorp.profiles.test = { };
    xfce4-terminal.enable = true;
  };

  programs = {
    aerc.enable = true;
    alacritty.enable = true;
    bat.enable = true;
    bottom.enable = true;
    brave.enable = true;
    btop.enable = true;
    cava.enable = true;
    chromium.enable = true;
    element-desktop.enable = true;
    fish.enable = true;
    foot.enable = true;
    freetube.enable = true;
    fuzzel.enable = true;
    fzf.enable = true;
    gh-dash.enable = true;
    ghostty.enable = true;
    git = {
      enable = true;
      delta.enable = true;
    };
    gitui.enable = true;
    # this is enabled by default already, but still
    # listing explicitly so we know it's tested
    glamour.catppuccin.enable = true;
    helix.enable = true;
    hyprlock.enable = true;
    imv.enable = true;
    k9s.enable = true;
    kitty.enable = true;
    lazygit.enable = true;
    lsd.enable = true;
    mangohud.enable = true;
    micro.enable = true;
    mpv.enable = true;
    neovim.enable = true;
    newsboat.enable = true;
    obs-studio.enable = true;
    qutebrowser.enable = false; # broken package due to python3.13-lxml-html-clean-0.4.2
    rio.enable = true;
    rofi.enable = true;
    skim.enable = true;
    spotify-player.enable = true;
    starship.enable = true;
    swaylock.enable = true;
    tmux.enable = true;
    tofi.enable = true;
    thunderbird = {
      enable = true;
      profiles.catppuccin-mocha-mauve.isDefault = true;
    };
    vesktop.enable = true;
    vscode = {
      enable = true;
      package = pkgs.vscodium;
    };
    waybar.enable = true;
    wezterm.enable = true;
    wlogout.enable = true;
    yazi.enable = true;
    zathura.enable = true;
    zed-editor.enable = true;
    zellij.enable = true;
    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
    };
    sioyek.enable = true;
  };

  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style.name = "kvantum";
  };

  services = {
    dunst.enable = true;
    mako.enable = true;
    polybar = {
      enable = true;
      script = ''
        polybar top &
      '';
    };
    swaync.enable = true;
  };

  wayland.windowManager.sway.enable = true;
  wayland.windowManager.hyprland.enable = true;
}
