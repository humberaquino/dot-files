# Humber's dot files

## Fish
ln -s ~/dot-files/fish/config.fish

## Neovim
cd ~/.config
ln -s ~/dot-files/nvim

Packer is autoinstalled if not found.
You just need to:
1. Open nvim, wait a few secs for Packer autoinstall
2. Run `:PackerSync`
3. Close and open and that's it

## Clean up caches

```
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```
