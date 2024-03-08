{

  plugins.luasnip.enable = true;
  plugins.lsp = {
    enable = true;
    servers = {
      rnix-lsp.enable = true;
      lua-ls.enable = true;
      gopls.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      yamlls.enable = true;
      jsonls.enable = true;
      tsserver.enable = true;
      zls.enable = true;
      taplo.enable = true;
    };
  };

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
      ];

      snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

      mapping = {
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      };
    };
  };


  plugins.cmp-nvim-lsp-signature-help.enable = true;

  plugins.treesitter = {
    enable = true;
    ensureInstalled = [
      "http"
      "json"
      "nix"
      "lua"
      "go"
      "rust"
      "zig"
      "typescript"
      "javascript"
    ];
  };

  plugins.lspsaga = {
    enable = true;
    beacon.enable = true;
    symbolInWinbar.enable = true;
    rename.autoSave = true;
  };


  plugins.trouble.enable = true;


  filetype.filename = {
    "Justfile" = "make";
  };

  filetype.extension = {
    "http" = "http";
  };
}
