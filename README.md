# dotfiles

These are my .files for backing up and setting up macOS.

I set this up following Patrick McDonald's guide at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).

# Install

Install using `./install`

# TODO

- Terminal Preferences
- Changed Shell to ZSH
- Dock Preferences
- Mission Control Preferences
- Finder Show Path Bar
- Git (config and SSH)

# Software I use

## Homebrew

### Applications (Casks)

- Adobe Reader
- Amazon-Workspaces
- Android Studio
- Avira-Antivirus
- Blender
- Chrome
- Discord
- Docker
- Dropbox
- Firefox
- Git Fork
- GitKraken
- Google Drive
- Grammarly
- Insomnia
- JetBrains Rider
- Kite
- Microsoft Office
- Minecraft Launcher
- MongoDB
- MongoDB Compass
- Postman
- PyCharm
- Skype
- Spotify
- Steam
- Sublime Text
- Teamviewer
- Tor Browser
- Unity Hub
- VLC
- VSCode
- Webex
- Zoom

### Packages (Brews)

- bat
  - [https://github.com/sharkdp/bat](https://github.com/sharkdp/bat)
- gradle
- ios-deploy
- mongodb-community
- mongodb-community-shell
- mongodb-database-tools
- node
- tree

## macOS App Store Apps

- Adblock Plus for Safari ABP
- Downlink
- Grammarly for Safari
- Kindle
- LastPass
- Logic Pro
- Magnet
- Microsoft To Do
- Monit
- NordVPN IKE
- Notability
- Slack
- The Unarchiver
- WhatsApp
- Xcode

## Other

# Settings

## macOS

## Application Settings

### VS Code

#### Settings

```
{
  "editor.fontSize": 16,
  "editor.minimap.enabled": true,
  "editor.formatOnSave": true,
  "files.autoSave": "off",
  "files.autoSaveDelay": 300,
  "files.exclude": {
    "**/*.pyc": { "when": "$(basename).py" },
    "**/__pycache__": true
  },
  "python.formatting.provider": "black",
  //"python.pythonPath": "/usr/local/bin/python3",
  "terminal.integrated.fontSize": 16,
  "terminal.integrated.fontFamily": "'Hack', 'PowerlineSymbols'",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.settings.editor": "json",
  "workbench.settings.openDefaultSettings": true,
  "workbench.settings.useSplitJSON": true,
  "window.zoomLevel": 0,
  "editor.codeLens": false,
  "editor.acceptSuggestionOnCommitCharacter": false,
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  // Kite
  "editor.suggestOnTriggerCharacters": true,
  "kite.showWelcomeNotificationOnStartup": false,
  "liveServer.settings.donotVerifyTags": true,
  "angular.experimental-ivy": true
}
```

#### Extensions

Angular.ng-template
dbaeumer.vscode-eslint
DotJoshJohnson.xml
EditorConfig.EditorConfig
eg2.vscode-npm-script
esbenp.prettier-vscode
johnpapa.angular-essentials
johnpapa.Angular2
johnpapa.vscode-peacock
johnpapa.winteriscoming
kiteco.kite
kleber-swf.unity-code-snippets
ms-azuretools.vscode-docker
ms-dotnettools.csharp
ms-python.anaconda-extension-pack
ms-python.python
ms-toolsai.jupyter
msjsdiag.debugger-for-chrome
msjsdiag.debugger-for-edge
nrwl.angular-console
PKief.material-icon-theme
quicktype.quicktype
ritwickdey.LiveServer
Unity.unity-debug

# Post Install Checklist

- Login to VSCode w/ GitHub

# Dependencies

These are the dependencies of this project:

- [https://github.com/anishathalye/dotbot](https://github.com/anishathalye/dotbot)

# Guides

Here are some links to the guides I followed:

- [http://dotfiles.github.io](http://dotfiles.github.io)
- [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
-

# Notes

## Terminal Commands

### Source zshrc changes

`source ~/.zshrc`

### Create executable .zsh file

1. Create a `<filename>.zsh` file.
2. Give it executable permissions with `chmod +x <filename>.zsh`

### Create / Overwrite Brewfile

`brew bundle dump` to create `Brewfile`

`brew bundle dump --force` to overwrite existing `Brewfile`

`brew bundle dump --force --describe` to overwrite existing `Brewfile` with descriptions.
