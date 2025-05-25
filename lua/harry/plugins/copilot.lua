return {
	"github/copilot.vim",
	event = "InsertEnter",
	config = function()
		-- Evita que o Copilot use <Tab> automaticamente
		vim.g.copilot_no_tab_map = true

		-- Mapeia Ctrl + L para aceitar sugestões do Copilot
		vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', {
			expr = true,
			silent = true,
			noremap = true,
		})

		-- Ativa o Copilot automaticamente com pequeno delay (garante que o plugin carregou)
		vim.defer_fn(function()
			vim.cmd("Copilot enable")
		end, 100)

		-- Desativa o Copilot para arquivos Markdown (exemplo)
		vim.cmd([[
      autocmd FileType markdown let b:copilot_enabled = v:false
    ]])
	end,
}
