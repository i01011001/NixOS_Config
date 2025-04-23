if not nixCats("general") then
	return
end

function lsp_setup(lang)
	if not vim.fn.executable(lang.cmd[1]) then
		vim.notify(string.format('LSP server "%s" not found.', lang.name), vim.log.levels.WARN)
		return
	end
	vim.api.nvim_create_autocmd("FileType", {
		pattern = lang.pattern,
		callback = function()
			local found = vim.fs.find(lang.root_dir, { upward = true })[1]
			local root_dir = found and vim.fs.dirname(found) or vim.loop.cwd()
			vim.lsp.start({
				name = lang.name,
				cmd = lang.cmd,
				root_dir = root_dir,
				settings = lang.settings,
			})
			vim.notify(string.format("LSP client started for %s", lang.name), vim.log.levels.INFO)
		end,
	})
end

local langs = {
	cpp = {
		pattern = "cpp",
		name = "Clangd",
		cmd = { "clangd", "--offset-encoding=utf-16", "--background-index", "--clang-tidy", "--header-insertion=never" },
		root_dir = { "compile_commands.json", ".git" },
	},
	c = {
		pattern = "c",
		name = "Clangd",
		cmd = { "clangd", "--offset-encoding=utf-16", "--background-index", "--clang-tidy", "--header-insertion=never" },
		root_dir = { "compile_commands.json", ".git" },
	},
	py = {
		pattern = "python",
		name = "Pyright",
		cmd = { "pyright-langserver", "--stdio" },
		root_dir = { ".git", "pyproject.toml" },
		settings = { python = {} },
	},
	go = {
		pattern = "go",
		name = "Gopls",
		cmd = { "gopls" },
		root_dir = { "go.mod", "go.work", ".git" },
	},
	lua = {
		pattern = "lua",
		name = "Lua-language-server",
		cmd = { "lua-language-server" },
		root_dir = { ".git", ".luarc.json", ".luarc.jsonc" },
		settings = {
			Lua = {
				formatters = {
					ignoreComments = true,
				},
				signatureHelp = { enabled = true },
				diagnostics = {
					globals = { "vim", "nixCats" },
					disable = { "missing-fields" },
				},
			},
		},
	},
	js = {
		pattern = "javascript",
		name = "TypeScript Language Server",
		cmd = { "typescript-language-server", "--stdio" },
		root_dir = { "package.json", ".git" },
	},
	nix_nixd = {
		pattern = "nix",
		name = "Nixd",
		cmd = { "nixd" },
		root_dir = { ".git" },
	},
	-- nix_nil = {
	-- 	pattern = "nix",
	-- 	name = "Nil",
	-- 	cmd = { "nil" },
	-- 	root_dir = { ".git" },
	-- },
	md = {
		pattern = "md",
		name = "Marksman",
		cmd = { "marksman" },
		root_dir = { ".git" },
	},
}

for _, lang in pairs(langs) do
	lsp_setup(lang)
end

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "Hover Documentation" })
vim.keymap.set("n", "<space>e", function()
	vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Hover Documentation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
