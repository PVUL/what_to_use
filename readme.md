## List of software & tools that I like to use

_Note: I'm on a Mac_

First off, if you have a fresh macbook, the first things to get are:

> 1. Homebrew
> 2. iTerm2
> 3. Zsh

#### [Homebrew](https://brew.sh/)

_The missing package manager for macOS_ and the essential tool for any developer.

Press `⌘ + space` and type `terminal` and press `<enter>`. A new terminal session should be up. In terminal paste the following:

```shell
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

_Note: Command Line Tools for Xcode is a dependency for this action, which can be obtained through App Store Updates._

#### [iTerm2](https://www.iterm2.com/)

_A terminal emulator for macOS that does amazing things._

With homebrew installed, we can install iTerm via `brew install` (taps homebrew/cask):

```shell
brew install iterm2
```

Press `⌘ + space`, type `iterm`, and press `<enter>`. You are now using iTerm!

#### Zsh

Zsh (or Z shell) is a much more powerful shell than Bash, so let's get it! Specifically, [`Oh My Zsh`](http://ohmyz.sh/) - which is an open-source framework for managing ZSH configs.

```shell
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Don't forget to update the `.zshrc` with the `/usr/local/bin` to your `$PATH` environmental variable:

```
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
```

_Note: Doing the above tells the system to use programs installed by Homebrew, rather than the OS default, if exists._

---

## List of software

**IDEs**

- Atom `brew cask install atom`
- VSCode `brew cask install visual-studio-code` - _preferred_
- Sublime `brew cask install sublime-text`

**Git workflow visualizer**

- SourceTree `brew cask install sourcetree`
- Sublime Merge `brew cask install sublime-merge`

**Testing/Debugging**

- Postman `brew cask install postman`
- Charles `brew cask install charles`

**Web browsers**

- Google Chrome `brew cask install google-chrome`
- Google Chrome Canary `brew cask install google-chrome-canary`
- Vivaldi `brew cask install vivaldi`
- Brave Browser `brew cask install brave-browser`

**Window manager**

- Spectacle `brew cask install spectacle`

**Communication**

- Slack `brew cask install slack`
- IrcCloud `brew cask install irccloud`

**Agile**

- Trello [`trello.com`](https://trello.com)
- Harvest `brew cask install harvest`
  for time-tracking

**Markdown editor**

- Typora `brew cask install typora`

**DB GUI**

- Postico (for postgreSQL) `brew cask install postico`

**Credential Management**

- 1Password `brew cask install 1password`
- MacPass `brew cask install macpass`

**Misc**

- Flux `brew cask install flux`
  (this feature is built-in to newer MacOS)
- Duet `brew cask install duet`
  for dual screen set-up

---

#### To remove the [delete key delay](http://hints.macworld.com/article.php?story=20090823193018149)

```
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain InitialKeyRepeat -int 0
defaults write -g ApplePressAndHoldEnabled -bool false
```
