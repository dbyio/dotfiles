# dotfiles

### Installing

The following will install the dotfiles repo in the current directory and deploy dotfiles in your home directory.

```bash
git clone https://github.com/dbyio/dotfiles
cd dotfiles
make install
```

Once successfully installed, load a new shell session or `source ~/.bashrc` in all running shells.

### System-specific `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Add local variables or commands

If `~/.extra` exists, it will be sourced along with the other files. It can be used to locally add custom variables or commands which contain sensitive data or don't have any value in all your environments.

My `~/.extra` looks something like this:

```bash
# Set GH API key for Homebrew 
export HOMEBREW_GITHUB_API_TOKEN=[EDITED]
# Git credentials
GIT_AUTHOR_NAME="my name"
GIT_AUTHOR_EMAIL="my_email@ddre.ss"
GIT_AUTHOR_GPG=[EDITED]
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global user.signingkey "$GIT_AUTHOR_GPG"
```

## Author

| Nicolas Perraud <np@bitbox.io> |

## Acknowledgments

These dotfiles were largely inspired by https://github.com/mathiasbynens
