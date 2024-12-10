# Ilorez Neovim Setup

This repository provides a basic Neovim configuration tailored for Intra42 students who are just getting started with Neovim. Follow the steps below to set up your environment.

## Installation Steps

### 1. Install Neovim

#### a. Download the Binary:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
```

#### b. Extract the Archive:

```bash
tar xzvf nvim-linux64.tar.gz
```

#### c. Move Neovim to a Local Directory:

```bash
mv nvim-linux64 ~/.local/nvim
```

#### d. Add Neovim to PATH:

Edit your shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`) and add the following line:

```bash
echo 'export PATH=$HOME/.local/nvim/bin:$PATH' >> ~/.bashrc
```

#### e. Reload the Shell Configuration:

```bash
source ~/.bashrc
```

#### f. Verify the Installation:

```bash
nvim --version
```

#### g. Clean Up:

Remove the downloaded archive:

```bash
rm nvim-linux64.tar.gz
```

### 2. Clone the Configuration Repository

```bash
git clone https://github.com/ilorez/nvim_setup.git ~/.config/nvim
```

### 3. Install Plugins

Launch Neovim and press `CTRL + I` to install the plugins:

```bash
nvim
```

### 4. Update Intra42 Credentials

Edit the `intra42.lua` file to set your username and email:

```bash
nvim ~/.config/nvim/lua/plugins/intra42.lua
```

Replace the following lines with your own information:

```lua
      user = "znajdaou",
      mail = "znajdaou@student.1337.ma",
```

That's it! Your Neovim setup is ready to use.


