return {
  "nvim-neotest/neotest",
  dependencies = {
    "jfpedroza/neotest-elixir",
  },
  -- opts = function(_, opts)
  --   if not opts.adapters then opts.adapters = {} end
  --   table.insert(opts.adapters, require "neotest-elixir"(require("astrocore").plugin_opts "neotest-elixir"))
  -- end,

  config = function()
    ---@diagnostic disable: missing-fields
    require("neotest").setup {

      adapters = {
        require "neotest-elixir",
      },
    }
  end,
}
