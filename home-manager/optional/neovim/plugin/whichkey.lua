if not nixCats('general') then
	return
end

require("which-key").setup({
  preset = "modern",
  delay = 500,
})
