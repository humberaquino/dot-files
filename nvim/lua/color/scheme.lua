local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
  return
end

local ok_file, _ = pcall(require, "color.custom")
if not ok_file then
  vim.cmd("colorscheme nightfox")
end
