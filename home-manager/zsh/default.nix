{ pkgs, config, ... }: {
  programs.zsh = {
    enable = true;
    autocd = true; # cdなしでファイルパスだけで移動
    enableCompletion = true; # 自動補完
    autosuggestion  = {
      enable = true; # 入力サジェスト
      strategy = [ "match_prev_cmd" ];
    };
    syntaxHighlighting.enable = true; # シンタックスハイライト
    # shellAliases = {
    #   cat = "bat";
    #   grep = "rg";
    #   ls = "eza --icons always --classify always";
    #   la = "eza --icons always --classify always --all ";
    #   ll = "eza --icons always --long --all --git ";
    #   tree = "eza --icons always --classify always --tree";
    # };
    dotDir = "${config.xdg.configHome}/zsh";
    envExtra = builtins.readfile ./zsh-history.sh
  };
}
