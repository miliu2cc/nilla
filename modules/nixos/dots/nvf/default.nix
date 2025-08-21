{lib, pkgs, ...}:{
  programs.nvf = {
    enable = true;

    # Your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings = {
      vim.viAlias = false;
      vim.vimAlias = true;
      vim.lsp = {
        enable = true;
      };
      vim.languages = {
        rust = {
          enable = true;
          lsp.enable = true;
          crates.enable = true;
          treesitter.enable = true;
        };
        nix.enable = true;
        lua.enable = true;
      };
      vim.autocomplete.blink-cmp = {
        enable = true;
        friendly-snippets.enable = true;
      };
      vim.dashboard.alpha = {
        enable = true;
        theme = "startify";
      };
      vim.theme = {
        enable = true;
        name = "catppuccin";
        style = "mocha";
      };
      vim.comments.comment-nvim.enable = true;
      vim.diagnostics.config.virtual_lines = true;
      vim.diagnostics.config.underline = false;
      vim.diagnostics.config.virtual_text = false;
      vim.diagnostics.nvim-lint = {
        enable = true;
        lint_after_save = true;
      };
      vim.filetree.neo-tree = {
        enable = true;
        setupOpts = {
          enable_git_status = true;
          enable_modified_markers = true;
          git_status_async = true;
        };
      };
      vim.formatter.conform-nvim.enable = true;
      vim.git.enable = true;
      vim.minimap.minimap-vim.enable = true;
      vim.ui.noice.enable = true;
      vim.ui.noice.setupOpts.presets.lsp_doc_border = true;
      vim.snippets.luasnip.enable = true;
      vim.statusline.lualine.enable = true;
      vim.tabline.nvimBufferline.enable = true;
      vim.tabline.nvimBufferline.setupOpts.options.diagnostics = "coc";
      vim.utility.motion.flash-nvim.enable = true;
      vim.binds.whichKey.enable = true;
      vim.utility.yazi-nvim.enable = true;
      vim.utility.smart-splits.enable = true;
      vim.mini.notify.enable = true;
      vim.startPlugins = [
        pkgs.vimPlugins.lsp_lines-nvim
      ];
      vim.extraPlugins = {
          lsp_lines = {
            package = pkgs.vimPlugins.lsp_lines-nvim;
            setup = ''
              require("lsp_lines").setup()
            '';
          };
        };
    };
  };
}
