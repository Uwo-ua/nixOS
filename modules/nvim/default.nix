{ config, pkgs, lib, ... }:

let

  plugins = with pkgs.vimPlugins; [
    (pkgs.vimPlugins.nvim-treesitter.withPlugins (plugins: with plugins; [
      c
      nix
      lua
      haskell
      vue
      elixir
    ]))
    bufferline-nvim
    cmp-buffer
    cmp-cmdline
    cmp-nvim-lsp
    cmp-omni
    cmp-path
    cmp-treesitter
    cmp_luasnip
    indent-blankline-nvim
    litee-calltree-nvim
    litee-filetree-nvim
    litee-nvim
    litee-symboltree-nvim
    lsp_extensions-nvim
    lsp_signature-nvim
    lspkind-nvim
    luasnip
    nvim-autopairs
    nvim-cmp
    nvim-dap
    nvim-dap-ui
    nvim-hlslens
    nvim-lspconfig
    nvim-web-devicons
    plenary-nvim
    popup-nvim
    rust-tools-nvim
    tagbar
    feline-nvim
    catppuccin-nvim
    telescope-nvim
    trouble-nvim
    vimtex
  ];

in
{
  home.packages = with pkgs; [
    nixpkgs-fmt
    rnix-lsp
    sumneko-lua-language-server
  ];

  programs.neovim = {
    enable = true;
    extraConfig = ''
      luafile ~/.config/nvim/setting.lua
      luafile ~/.config/nvim/mapping.lua
      luafile ~/.config/nvim/modules/telescope.lua
      luafile ~/.config/nvim/modules/feline.lua
      luafile ~/.config/nvim/modules/cmp.lua
      luafile ~/.config/nvim/modules/syntax.lua
      luafile ~/.config/nvim/modules/setting.lua
    '';
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = true;
    withPython3 = true;
    inherit plugins;
  };
}
