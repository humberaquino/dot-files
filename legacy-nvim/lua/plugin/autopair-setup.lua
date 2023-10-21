local status_ok, autopair = pcall(require, "nvim-autopairs")
if not status_ok then
	return
end

autopair.setup({})
