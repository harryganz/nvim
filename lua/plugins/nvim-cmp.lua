return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },
    config =  function(_, opts)
        cmp = require("cmp")
        luasnip = require("luasnip")

        cmp.setup({
            -- Basic snippet engine
            expand = function(args)
                snippet = require("luasnip").lsp_expand(args.body)
            end,

            -- Keymaps --
            mapping = cmp.mapping.preset.insert({
              ['<C-d>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<CR>'] = cmp.mapping.confirm({
                  behavior = cmp.ConfirmBehavior.Replace,
                  select = true 
              }),
              ['<Tab>'] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                      cmp.select_next_item()
                  elseif luasnip.expand_or_jumpable() then
                      luasnip.expand_or_jump()
                  else
                      fallback()
                  end
              end, {"i", "s"}),
              ['<S-Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                      cmp.select_next_item()
                  elseif luasnip.expand_or_jumpable() then
                      luasnip.expand_or_jump()
                  else
                      fallback()
                  end
              end, {"i", "s"}),
            }),
            -- LSP + Snippets Sources
            sources = cmp.config.sources({
              { name = 'nvim_lsp' },
              { name = 'luasnip' },
            }, {
              { name = 'buffer' },
            }),
        })

        -- Autocomplete for '/' and '?'
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        -- Autocomplete when running commands with ":"
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" }
            }, {
                { name = "cmdline" },
            }),
            matching = { disallow_symbol_nonprefix_matching = false },
        })
    end,
}
