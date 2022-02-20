local status_ok, autopair = pcall(require, "nvim-autopair")
if not status_ok then
	return
end

autopair.setup()
