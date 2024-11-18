# Hyprland Setup - ukwigana

This repository contains my personal **Hyprland** setup and configuration. It includes window manager configuration, dotfiles, and other related utilities used for an efficient Wayland environment. Feel free to use, adapt, or fork this repository to fit your needs.

## Table of Contents

1. [Installation](#installation)
2. [Configuration](#configuration)
3. [Dependencies](#dependencies)
4. [Custom Scripts](#custom-scripts)
5. [Screenshots](#screenshots)
6. [License](#license)

## Installation

To get started with this setup, follow these steps:

1. Clone this repository:
   ```bash
   git clone https://github.com/ukwigana/hyprland-setup.git
   cd hyprland-setup
   ```

2. Copy the configuration files to their respective locations:
   ```bash
   cp hyprland/hyprland.conf ~/.config/hypr/
   cp dotfiles/bashrc ~/.bashrc
   cp dotfiles/zshrc ~/.zshrc
   cp dotfiles/kitty.conf ~/.config/kitty/kitty.conf
   ```

3. Install dependencies (example for Arch Linux):
   ```bash
   sudo pacman -S hyprland rofi kitty waybar
   ```

4. Optionally, use the included `setup.sh` script to install required software (modify it based on your distro):
   ```bash
   ./setup.sh
   ```

## Configuration

You can find my configuration files for the following tools:

- **Hyprland**: `~/.config/hypr/hyprland.conf`
- **Waybar**: `~/.config/waybar/config.json`
- **Kitty**: `~/.config/kitty/kitty.conf`
- **Rofi**: `~/.config/rofi/config.rasi`

Feel free to modify these according to your needs.

## Dependencies

This setup assumes you're using **Hyprland** as your window manager along with the following tools:

- Hyprland
- Kitty terminal
- Waybar (for status bar)
- Rofi (for application launcher)
- Various utilities like `dunst`, `picom`, etc.

## Custom Scripts

I have written several scripts to help manage my window manager environment. You can find them in the `scripts/` directory.

## Screenshots

Here are some screenshots of my current Hyprland setup:

![Screenshot 1](screenshots/screenshot1.png)

## Credits / Acknowledgements

This setup wouldn't have been possible without the amazing work of the following people and resources. I would like to extend my gratitude to them:

- **[Alexays/Waybar](https://github.com/Alexays/Waybar)**  
  The configuration and inspiration for my status bar setup comes from the Waybar project. Thanks to Alexays for creating this powerful and customizable bar for Wayland!

- **[SolDoesTech/HyprV4](https://github.com/SolDoesTech/HyprV4)**  
  The HyprV4 repository provided useful insights and configuration examples for setting up my Hyprland environment. Special thanks to SolDoesTech for sharing their work!

- **[Arch Wiki - Hyprland](https://wiki.archlinux.org/title/Hyprland)**  
  The Arch Wiki article on Hyprland was invaluable in understanding the intricacies of configuring and using Hyprland on Arch-based systems. Highly recommend this resource to anyone starting with Hyprland.

- **[Hyprland Wiki](https://wiki.hyprland.org)**  
  The official Hyprland Wiki has been an essential reference, with helpful documentation and guides to configure and optimize Hyprland for Wayland users.

- **[YouTube - Hyprland Setup Tutorial](https://youtube.com/watch?v=oUpvtCEGrxQ)**  
  A fantastic YouTube tutorial that helped me get started with my Hyprland setup. Thanks to the creator for walking through the process and sharing the experience!
  
Feel free to check out these resources if you're looking for more information or different approaches to configuring Hyprland and Wayland environments.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

### Additional Tips:
- **Backup Configurations:** It's a good idea to occasionally commit your dotfiles and configurations to this repository, especially if you modify them significantly. You can use a Git hook to ignore temporary or sensitive files.
- **Issues and Discussions:** Enable the "Issues" and "Discussions" tabs on your GitHub repo to encourage feedback and collaboration.
- **License:** If you plan to make it public, consider choosing a license (e.g., MIT or GPL). The MIT license is the most permissive, while the GPL ensures derivative works remain open-source.

This should provide a clean and helpful way to share your Hyprland setup with the community! Let me know if you need any help with specific configurations or more details.


### Example of Adding Symlinks in the README
In your README, you can mention that users can clone the repository, but to use your setup, they’ll need to create symlinks or run a setup script that does it for them.

For example:

```markdown
## Setup

After cloning this repository, run the following commands to create symbolic links to your actual configuration files:

```bash
ln -s ~/.config/hypr/hyprland.conf hyprland-setup/hyprland/hyprland.conf
ln -s ~/.bashrc hyprland-setup/dotfiles/bashrc
# Add other symlinks for the rest of the configuration files as needed
```

This will link your system's configuration files to this repository. Any changes you make to your system's configurations will automatically be reflected here.
```

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
```

You can run the script by simply executing:

```bash
bash setup.sh
```

This will create the necessary symlinks for the user.

### Conclusion:
By using symbolic links, you can keep your actual configuration files up-to-date without having to manually copy them each time. It makes your repository clean and ensures you’re always working with the latest version of your config files. Plus, it’s much easier to maintain and share!