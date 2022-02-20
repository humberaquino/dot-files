local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
    return
end

local ok_file, _custom_conf = pcall(require, "color.custom")
if not ok_file then
    nightfox.load("nightfox")
end
