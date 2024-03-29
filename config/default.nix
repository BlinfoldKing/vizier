{ pkgs, ... }: {
  # Import all your configuration modules here
  imports = [
    ./barbar.nix
    ./nvim-tree.nix
    ./lualine.nix
    ./navic.nix
    ./keymap.nix
    ./lsp.nix
    ./telescope.nix
    ./terminal.nix
    ./git.nix
  ];

  extraPlugins = with pkgs.vimPlugins;[
    onedark-nvim
  ];
  colorscheme = "onedark";

  autoCmd = [
    {
      event = [ "BufWritePre" ];
      pattern = [ "*" ];
      command = "lua vim.lsp.buf.format()";
    }
  ];

  plugins.alpha = {
    enable = true;
    iconsEnabled = true;
    theme = "theta";
  };

  plugins = {
    cursorline.enable = true;
    rest.enable = true;
    diffview.enable = true;
    surround.enable = true;
    nvim-colorizer.enable = true;
    comment-nvim.enable = true;
    image.enable = true;
    neorg.enable = true;
  };


  plugins.notify = {
    enable = true;
    backgroundColour = "#191a1c";
  };

  extraConfigVim = ''
    set nu
    set rnu
    set hidden
    set nuw=6
    set cursorline
    set splitbelow
    set splitright
    set tabstop=4
    set shiftwidth=2
    set softtabstop=2
    set expandtab
    set mouse=a
    set background=dark
    set t_Co=256
    set encoding=UTF-8
    set foldmethod=indent
    set foldnestmax=10
    set nofoldenable

    let g:onedark_config = {
    \ 'style': 'warmer',
    \ 'transparent': 'true',
    \}

    colorscheme onedark
  '';
}
