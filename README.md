# dotfiles

These are my dotfiles for backing up and setting up macOS.

# TODO

- Dock Preferences
- Mission Control Preferences
- Finder Show Path Bar

# Install / Restore Instructions

1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. `git clone https://github.com/frederickjjoubert/dotfiles.git ~/.dotfiles`. We'll start with `https` but switch to `ssh` after everything is installed.
3. `cd ~/.dotfiles`
4. If necessary, `git checkout <another_branch>`.
5. Do one last Software Audit by editing [Brewfile](Brewfile) directly.
6. Login to iCloud and the App Store.
7. [`./install`](install)
8. Restart computer.
9. Perform Manual Steps below: Setup up Dropbox (use multifactor authentication!) and allow files to sync before setting up dependent applications. Alfred settings are stored here. Mackup depends on this as well (and thus so do Terminal and VS Code).
10. Run `mackup restore`. Consider doing a `mackup restore --dry-run --verbose` first.
11. [Generate ssh key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes.

    ```zsh
    # Generate SSH key in default location (~/.ssh/config)
    ssh-keygen -t ed25519 -C "20562845+frederickjjoubert@users.noreply.github.com"

    # When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

    # At the prompt, type a secure passphrase.

    # Next, add SSH key to the ssh-agent

    # Start the ssh-agent
    eval "$(ssh-agent -s)"

    # Check if `~/.ssh/config` exists

    open ~/.ssh/config

    # If the file doesn't exist, create the file

    touch ~/.ssh/config

    # Open your `~/.ssh/config file`, then modify the file to contain the following lines. If your SSH key file has a different name or path than the example code, modify the filename or path to match your current setup.

    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_ed25519

    # Add private key to ssh-agent
    ssh-add -K ~/.ssh/id_ed25519

    # Copy public key and add to github.com > Settings > SSH and GPG keys
    pbcopy < ~/.ssh/id_ed25519.pub

    # Test SSH connection, then verify fingerprint and username
    # https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
    ssh -T git@github.com

    # (Within ~/.dotiles) Switch from HTTPS to SSH
    git remote set-url origin git@github.com:frederickjjoubert/dotfiles_macos.git
    ```

## Manual Steps

### Cloud Storage

- Login to Cloud Storage
- Login to Boxcryptor

### Alfred

1. `System Preferences > Keyboard > Shortcuts > Spotlight > Show Spotlight search (cmd+space)` uncheck.
2. `Alfred Preferences > Powerpack` add License.
3. `Alfred Preferences > General > Request Permissions`.
4. `Alfred Preferences > General > Alfred Hotkey` change to `cmd+space`.
5. `Alfred Preferences > Advanced > Set preferences folder` and set to `~/Dropbox/dotfiles/Alfred`.

# Dependencies

These are the dependencies of this project:

- [https://github.com/anishathalye/dotbot](https://github.com/anishathalye/dotbot)

# Decommission Computer

For a clean install:

[Create a bootable USB installer for macOS](https://support.apple.com/en-us/HT201372).

Software audit:

- Uninstall unwanted software (e.g. GarageBand, iMovie, Keynote, Numbers, Pages)
- Install missing software (look at `/Applications`, panes in System Preferences , maybe `~/Applications`, etc.)

Backup / sync files:

- Commit and Push to remote repositories
- Time Machine
- Dropbox / Google Drive
- Manual Backups (external drives, redundant cloud services)
- Contacts, Photos, Calendar, Messages (Google, iCloud)
- Mackup Backup `mackup backup`
- etc.

Deactivate licenses:

- Dropbox (`Preferences > Account > Unlink`)
- Google Drive (`Preferences > Settings > Disconnect Account`)
- Sign Out of App Store (`Menu > Store > Sign Out`)
- Sign Out of Apple ID (`System Preferences > Apple ID > Overview > SIgn Out`)
- iTunes, etc.

# Guides

I set this up following Patrick McDonald's guide at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).

- [https://github.com/eieioxyz/dotfiles_macos](https://github.com/eieioxyz/dotfiles_macos)

Here are some links to other guides I followed:

- [http://dotfiles.github.io](http://dotfiles.github.io)
- [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)

# Notes

## Terminal Commands

### Source zshrc changes

`source ~/.zshrc`

### Create executable .zsh file

1. Create a `<filename>.zsh` file.
2. Give it executable permissions with `chmod +x <filename>.zsh`

## Brew Commands

A Cheat Sheet [https://dev.to/code2bits/homebrew---basics--cheatsheet-3a3n](https://dev.to/code2bits/homebrew---basics--cheatsheet-3a3n)

### Create / Overwrite Brewfile

`brew bundle dump` to create `Brewfile`

`brew bundle dump --force` to overwrite existing `Brewfile`

`brew bundle dump --force --describe` to overwrite existing `Brewfile` with descriptions.
