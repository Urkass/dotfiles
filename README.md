1. Update macOS to the latest version with the App Store
2. Install brew
3. Generate ssh key for github
4. Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo `git clone git@github.com:Urkass/dotfiles.git` (Clone this repo `curl -#L https://github.com/Urkass/dotfiles/tarball/master | tar -xzv`)
6. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file
7. Run `sh setup.sh` to start the installation
8. Put your urkass.zsh-theme in ~/.oh-my-zsh/themes/ folder
9. Restore preferences by running `mackup restore`
10. Restart your computer to finalize the process
