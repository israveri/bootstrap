# Bootstrap

Setup and backup of my development environment.

# Requirements

You need the following to run this tool:

* [Ruby][ruby]

# Applications

This tool installs the following applications when prompted:

| Application            | Description                    |
|------------------------|--------------------------------|
| [antigen][antigen]     | Zsh Plugin Manager             |
| [asdf][asdf]           | A runtime version manager      |
| [bottom][bottom]       | A Better `top`                 |
| [exa][exa]             | A Better `ls`                  |
| [fzf][fzf]             | A Command Line Fuzzy Finder    |
| [httpie][httpie]       | A Better `curl`                |
| [hstr][hstr]           | Command History Search Tool    |
| [nerdfonts][nerdfonts] | Fonts with icons and ligatures |
| [oh-my-zsh][oh-my-zsh] | Zsh Management Framework       |
| [overmind][overmind]   | An awesome Procfile manager    |
| [starship][starship]   | Customizable Shell Prompt      |
| [tmux][tmux]           | Terminal Multiplexer           |
| [tmuxp][tmuxp]         | Session Manager for Tmux       |
| [vim][vim]             | Terminal Text Editor           |
| [zoxide][zoxide]       | A Better `cd`                  |
| [zsh][zsh]             | Unix Shell Application         |

# Programming Languages

This script will install the following programming languages through asdf's version management:

| Language             | Version            |
|----------------------|--------------------|
| Node                 | 22.2.0             |
| Python               | 3.12.3             |
| Ruby                 | 3.3.1              |

# Running

To setup the script you first need to install all dependencies:

    # bundle install

After that, the simplest way to install everything:

    # ./setup all

You can alse install only a subset of the available setups:

    # ./setup dotfiles
    # ./setup packages

To see all available commands:

    # ./setup help

[antigen]:   https://antigen.sharats.me/
[asdf]:      https://asdf-vm.com/
[bottom]:    https://github.com/ClementTsang/bottom#bottom
[exa]:       https://the.exa.website/
[fzf]:       https://github.com/junegunn/fzf#-
[httpie]:    https://httpie.io/
[hstr]:      https://github.com/dvorka/hstr#hstr
[nerdfonts]: https://www.nerdfonts.com/
[oh-my-zsh]: https://ohmyz.sh/
[overmind]:  https://github.com/DarthSim/overmind
[ruby]:      https://www.ruby-lang.org/
[starship]:  https://starship.rs/
[tmux]:      https://github.com/tmux/tmux/wiki
[tmuxp]:     https://tmuxp.git-pull.com/
[vim]:       https://www.vim.org/
[zoxide]:    https://github.com/ajeetdsouza/zoxide#zoxide
[zsh]:       https://zsh.sourceforge.io/
