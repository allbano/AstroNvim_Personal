return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- Carrega na inicialização
  config = function()
    require("transparent").clear_prefix "NeoTree"
    require("transparent").setup {
      enable = true, -- true por padrão
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLine",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
      },
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
      },
      extra_rules = { -- Adicione regras extras aqui, se necessário
        -- Regras para o Treesitter
        TSNode = { alpha = 0.8 }, -- Ajuste o valor de alpha conforme necessário
        TSComment = { alpha = 0.8 },
        TSString = { alpha = 0.8 },
        TSKeyword = { alpha = 0.8 },
        TSKeywordFunction = { alpha = 0.8 }, -- Para funções
        TSParameter = { alpha = 0.8 }, -- Para parâmetros de função
        TSConstructor = { alpha = 0.8 }, -- Para construtores
        -- Adicione mais regras para outros grupos de destaque do Treesitter, se necessário
      },
      exclude_groups = {},

      on_clear = function() end,
    }
  end,
}
