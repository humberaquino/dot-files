# Humber's dot files

## Fish
ln -s ~/dot-files/fish/config.fish

## Neovim
cd ~/.config
ln -s ~/dot-files/nvim

Packer is autoinstalled if not found.
You just need to:
1. Open nvim and close it
2. Open again and run `:PackerSync`
3. Close and open one last time. At this point everything should be ready
