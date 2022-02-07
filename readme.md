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

---

## Creating _memorable_ passwords in command line interface

While you can use [Mac OS's Keychain Access app to generate a password](https://eshop.macsales.com/blog/56895-generate-a-memorable-password-in-macos-with-password-assitant/) or test the strength of a password, it's not nearly as cool as doing it in terminal- and at the time of this writing, there is no way to generate a _memorable_ password with the native app.

_Memorable_ passwords are easier to remember than traditional passwords as they are a random collection of commonly used english words. There are many way to create _memorable_ passwords, below are two ways.

### Option 1: Using `shuf`

1. Install `shuf`

```bash
brew install coreutils
```

2. Use `shuf` like so:

```bash
shuf -n4 /usr/share/dict/words | xargs echo | pbcopy && pbpaste
```

The above will output the generated password and also copy it to clipboard. Just paste (`⌘ + v`) the password where necessary.

To adjust complexity of password, change the number following `-n`, for example `-n4` outputs 4 words, where as `-n5` would output 5 words so it has higher entropy, increasing guess difficulty. An argument of `-n3` outputs 3 words, therefore decreases complexity and guess difficulty. At the time of this writing

To hide the password output in the CLI, remove `&& pbpaste` from the above script.

### Option 2: Using [`xkcdpass`](https://github.com/redacted/XKCD-password-generator)
![Password Strength](https://imgs.xkcd.com/comics/password_strength.png)

1. Install `xkcdpass`

```
pip install xkcdpass
```

2. Running `xkcdpass`

```
$ xkcdpass
> pinball previous deprive militancy bereaved numeric
```

For more, see https://github.com/redacted/XKCD-password-generator#running-xkcdpass