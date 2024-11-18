
Alternatively, you could create a `setup.sh` script to automate this process, which might look like:

### Example `setup.sh` Script:

```bash
#!/bin/bash

# Create symlinks
ln -s ~/.config/hypr/hyprland.conf ./hyprland/hyprland.conf
ln -s ~/.bashrc ./dotfiles/bashrc
ln -s ~/.zshrc ./dotfiles/zshrc
ln -s ~/.config/kitty/kitty.conf ./dotfiles/kitty.conf
ln -s ~/.config/waybar/config.json ./dotfiles/waybar/config.json
ln -s ~/.config/rofi/config.rasi ./dotfiles/rofi/config.rasi

echo "Symlinks created successfully!"
