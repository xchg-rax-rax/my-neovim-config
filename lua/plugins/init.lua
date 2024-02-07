local plugins = {
    -- Night Owl is the stylish theme you're currently using
    {
      "oxfist/night-owl.nvim",
      lazy = false,
      priority = 1000, -- load theme first
      config = function()
        -- load the colorscheme here
        vim.cmd.colorscheme("night-owl")
      end,
    },
    {
        "rhysd/vim-clang-format",
        lazy = true,
        ft = { "c", "cpp"}
    },
    {
        "psf/black",
        lazy = true,
        ft = "python"
    },
    {
        "neoclide/coc.nvim",
        lazy = false,
        config = function()
            require("plugins.configs.coc")
        end,
        build = "npm ci"
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
        ensure_installed = {
            "black",
            "pyright",
            "rust_analyzer",
        }
    },
}
return plugins
