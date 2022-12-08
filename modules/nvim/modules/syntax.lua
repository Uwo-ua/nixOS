local _configs, configs = pcall(require, "nvim-treesitter.configs")
local _tspc, tspc = pcall(require, "nvim-treesitter.parsers")
if not _configs then
  return
end

configs.setup(
  {
    autotag = {enable = true},
    autopairs = {enable = true},
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true
    },
    indent = {
      enable = true,
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    }
  }
)

