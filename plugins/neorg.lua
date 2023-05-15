return {
  {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers", -- This is the important bit!
    event = "BufReadPre,BufNew *.norg",
    priority = 30,
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("neorg").setup {
        -- configuration here
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {
            config = {

            }
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                work = "~/Documents/neorg/work",
                home = "~/Documents/neorg/home",
              }
            }
          }
        }
      }
    end,
  }
}
