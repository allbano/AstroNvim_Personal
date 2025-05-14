---@type LazySpec
return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      -- Configurações básicas
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
      },
      messages = {
        enabled = true,
        view = "notify",
      },
      -- Adicione esta seção para customizar a posição
      views = {
        cmdline_popup = {
          position = {
            row = "95%", -- Posiciona perto da parte inferior (ajuste o % conforme necessário)
            col = "50%", -- Centralizado horizontalmente
          },
          size = {
            width = "60%", -- Largura do popup
            height = "auto",
          },
        },
        -- Opcional: Ajuste o popupmenu para acompanhar a cmdline
        popupmenu = {
          position = {
            row = "99%", -- Ajuste fino para alinhar com a cmdline
            col = "50%",
          },
          size = {
            width = "60%",
          },
        },
      },
      -- Adicione esta seção para resolver os conflitos LSP
      lsp = {
        hover = {
          enabled = false, -- Desativa o handler do hover do Noice
        },
        signature = {
          enabled = false, -- Desativa o handler da signature_help do Noice
        },
      },
    },
  },
}
