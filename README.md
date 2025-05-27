# dotfiles

Minimal, cross-platform dotfiles for a fast, distraction-free terminal environment. Actively used on Debian and macOS.

## Design Principles

This setup avoids:

- Heavy shell frameworks
- Cosmetic UI tweaks
- Plugin overuse (when simple config suffices)
- Unnecessary dependencies

It favors:

- Readable configuration
- Fast startup and low overhead
- Neovim leader key mappings (inspired by [Spacemacs](https://www.spacemacs.org))
- YAGNI as a rule

## Setup

Requires [GNU Stow](https://www.gnu.org/software/stow/).

```bash
git clone https://github.com/mkrawiec/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow neovim tmux bash   # specify desired modules
```

## License

[MIT](LICENSE)
