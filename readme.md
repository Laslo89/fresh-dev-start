# My Dev Maschine Setup

This repo contains my current setup for a new dev maschine. Feel free to use it and be inspired.

<!-- toc -->
* [What computer do I have](#what-computer-do-i-have)
* [Homebrew / Terminal / Shell](#homebrew-terminal-shell)
  * [Homebrew](#homebrew)
  * [Terminal](#terminal)
  * [Shell](#shell)
    * [Install Bash and set it as the default](#install-bash-and-set-it-as-the-default)
    * [Customizing Bash with `.bash_profile`](#customizing-bash-with-bash-profile)
    * [Commands used by my .bash_profile](#commands-used-by-my-bash-profile)
  * [Install dev cli tools](#install-dev-cli-tools)
    * [git](#git)
    * [nvm and node](#nvm-and-node)
    * [yarn](#yarn)
* [OS Productivity](#os-productivity)
  * [Window Management](#window-management)
  * [App Switching](#app-switching)
  * [Quick Launching](#quick-launching)
  * [apps](#apps)
    * [Available via brew](#available-via-brew)
    * [External downloads](#external-downloads)
  * [Finder](#finder)
* [Menu Bar Customization](#menu-bar-customization)
  * [System Stats Widgets](#system-stats-widgets)
  * [Menu Bar Calendar](#menu-bar-calendar)
* [Web Browser](#web-browser)
  * [Firefox](#firefox)
* [IDE](#ide)

<!-- toc stop -->

## What computer do I have

After a longer period of using an older MacBook Pro 2013 I finally decided to make an update :-). Currently I am using the M1 Macbook Pro.
These are my specs at a glance:

- Apple MB Pro 14"
- M1 Pro 16 Core 3.2 GHz
- 32GB RAM
- 1TB SSD

You can read more about it [here](https://everymac.com/systems/apple/macbook_pro/specs/macbook-pro-m1-pro-10-core-cpu-16-core-gpu-14-2021-specs.html)

## Homebrew / Terminal / Shell

### Homebrew
First of all we install [Homebrew](https://brew.sh/). Open up the built in `Terminal` app and run this command:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This will also install the xcode build tools which is needed by many other developer tools. After Homebrew is done installing, we will use it to install everything else we need. Btw. this is how you install a package with brew:

```sh
brew install name-of-package
```

### Terminal

The first app I install is to replace the built in `Terminal`.

I prefer [iTerm2](https://iterm2.com/)

```sh
brew install iterm2
```

### Shell

Mac now comes with `zsh` as the default [shell](https://en.wikipedia.org/wiki/Comparison_of_command_shells). `bash` is my preferred shell.

I prefer bash because every remote linux machine I log into uses bash. Also, most shell scripts you come across (`.sh` files) are meant to be run on `sh` (Bourne shell) or `bash` (Bourne again shell). These files _might_ run on `zsh`, but there might be some compatibility issues.

If you are a beginner, you probably don't need to replace your shell with `bash`. If you're going to stick with `zsh`, checkout [Oh My Zsh](https://ohmyz.sh/) which gives you a bunch of customizations out of the box.

#### Install Bash and set it as the default

To see what shell is currently your default, run:

```sh
echo $SHELL
```

To install the latest version of bash:

```sh
brew install bash
```

Then, determine where bash got installed:

```sh
which bash
```

This will likely print `/usr/local/bin/bash`.

We now need to add this to our `/etc/shells` file so we can set it as our default shell.

Open up the `/etc/shells` file in `nano` (a command line text editor) with super user privileges (you will need to type your password after running this command):

```sh
sudo nano /etc/shells
```
Add `/usr/local/bin/bash` to the file above the other list of shells and save changes.

Now that `/usr/local/bin/bash` is in our `/etc/shells` file, we can set it as our default shell (you will need to enter your password for this command as well):

```sh
chsh -s /usr/local/bin/bash
```

Now that you've changed your shell, if you open up a new iTerm2 tab or close / re-open iTerm2, you should be presented with a `bash` shell!

You can run the following to confirm your shell has changed:

```sh
echo $SHELL
```

#### Customizing Bash with `.bash_profile`

I have a custom `.bash_profile` with all of my custom settings including a customized prompt, aliases, PATH variables, colors and more.

You might have noticed the dot before the name. Dot-files are special files mostly used to manage settings and such. They are **hidden** by default. You can make them visible by running this command:

```sh
defaults write com.apple.finder AppleShowAllFiles YES

killall Finder
```

If you do not want to go through the process of customizing your `.bash_profile`, you can install [Oh My Bash](https://ohmybash.nntoan.com/) to get a ton of customizations out of the box.

I store my `.bash_profile` on [github here](https://github.com/Laslo89/fresh-start/blob/master/.bash_profile) so I can copy it over to any machine I'm setting up.

Copy this file (or create your own) in your home directory:

```sh
cd ~
curl -O https://raw.githubusercontent.com/Laslo89/fresh-start/master/.bash_profile
```

#### Commands used by my .bash_profile

* vcprompt - list the current branch if in a folder that is a git repo
* [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) - print a random quote / story / joke / poem.
* [cowsay](https://en.wikipedia.org/wiki/Cowsay) - use a cowfile to say a random fortune

```sh
brew install vcprompt
brew install fortune
brew install cowsay
```

### Install dev cli tools

#### git

```sh
brew install git
```
Open a new tab / window to start using the latest version:
```sh
git --version
```

Configure git with your name / email and preferred editor:

```sh
git config --global user.name laslo89

git config --global user.email matze_lebt@gmx.de

git config --global core.editor nano
```

#### nvm and node

I use nvm to manage the installed versions of Node.js on my machine. This allows me to easily switch between Node.js versions depending on the project I'm working in.

See installation instructions [here](https://github.com/nvm-sh/nvm#installing-and-updating).

OR run this command (make sure v0.39.1 is still the latest)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

After installation you'll want to add the following to your .bash_profile / .zshrc etc.

```sh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ## This loads nvm
```

Now that nvm is installed, you can install a specific version of node.js and use it:

```sh
nvm install lts
node --version
```

#### yarn
Within my projects i like to use yarn as package manager.


```sh
brew install yarn
```

## OS Productivity

### Window Management

I know this feature is built in to a lot of other operating systems, but it is not built in to a Mac, so we need an app for it.

I use [magnet](https://magnet.crowdcafe.com/) to move and resize windows using keyboard shortcuts or the mouse. Back in the days i got it for only 2$. Due to onlgoing maintanence and updates the raised the price to 8$. I think thats ok and the tool is worth it. If you want a solution that is free you can try [rectangle](https://rectangleapp.com/)

I highly recommend installing one of these.

[magnet](https://magnet.crowdcafe.com/) or

```sh
brew install rectangle
```

### App Switching

The built in App switcher only shows application icons, and only shows 1 icon per app regardless of how many windows you have open in that app.

I use an app switcher called [AltTab](https://alt-tab-macos.netlify.app/). It shows full window previews, and has an option to show a preview for every open window in all applications (even minimized ones).

I replace the built-in `CMD+TAB` shortcut with AltTab.

```sh
brew install alt-tab
```

### Quick Launching

The built in spotlight search is a bit slow for me and usually has web search results as the default instead of apps or folders on my machine.

I use [Alfred](https://www.alfredapp.com/) to launch apps / folders. There are a lot of other cool things you can do with Alfred (workflows, scripting, clipboard manager etc.), but I mainly use it for launching apps and folders.

```sh
brew install alfred
```

### Apps

A list of all my apps:

For image scraping and light editing I use [figma](https://www.figma.com/). Figma runs in the browser but you can install the PWA. A must have tool for web devs.

#### Available via brew
* [firefox-developer-edition](https://www.mozilla.org/en-US/firefox/developer/) - Preferred web browser
* [firefox](https://www.mozilla.org/en-US/firefox/new/)
* [google-chrome](https://www.google.com/chrome/index.html)
* [safari-technology-preview](https://developer.apple.com/safari/technology-preview/)
* [app-cleaner](https://freemacsoft.net/appcleaner/) - When removing an app, will search your file system for related files / settings that should be removed as well
* [slack]() - Messaging / Community
* [discord](https://discord.com/) - Messaging / Community
* [vlc](https://www.videolan.org/) - I use VLC to watch videos instead of the built in QuickTime.
* [keka](https://www.keka.io/en/) - Can extract 7z / rar and other types of archives
* [visual-studio-code](https://code.visualstudio.com/) - Code Editor
* [sublime-text](https://www.sublimetext.com/) - Note taking
* [iterm2](https://iterm2.com/) - alternativ terminal app
* [alfred](https://www.alfredapp.com/) - quick launcher
* [alt-tab](https://alt-tab-macos.netlify.app/) - app switcher
* [rectangle](https://rectangleapp.com/) - window manager (free)
* [spotify](https://www.spotify.com/us/download/windows/) - music streaming client
* [stats](https://github.com/exelban/stats) - custom menu items
* [itsycal]() - custom calender for menu
* [todoist](https://todoist.com/downloads/mac) - todo app

#### External downloads
* [magnet](https://magnet.crowdcafe.com/) - window manager (paid)
* [ipin2](https://ipin2.de/en/) - password manager (paid)

Most of these apps are available via brew. You can easily install them by using [this apps.txt file](https://github.com/Laslo89/fresh-start/blob/master/apps.txt) and running brew install:

```sh
xargs brew install < apps.txt
```

### Finder

* Finder -> Preferences
  * General -> Show these on the desktop -> Select None
      * I try to keep my desktop completely clean.
  * General -> New Finder windows show -> Home Folder
      * I prefer to see my home folder in each new finder window instead of recent documents
  * Advanced -> Show all filename extensions -> Yes
  * Advanced -> Show warning before changing an extension -> No
  * Advanced -> When performing a search -> Search the current folder
* View
  * Show Status Bar
  * Show Path Bar
  * Show Tab Bar

## Menu Bar Customization

### System Stats Widgets

I like to see my network traffic, CPU temp / usage and RAM usage at a glance. For this I use [stats](https://github.com/exelban/stats), a menu bar stats app.

```sh
brew install stats
```

### Menu Bar Calendar

I like to have a calendar in the menu bar that I can quickly look at. Stats does not include one, so I found [itsycal](https://www.mowglii.com/itsycal/).

```sh
brew install itsycal
```

## Web Browser

### Firefox

I use Firefox as my main browser because it is open source and comes from the [Mozilla Foundation](https://www.mozilla.org/en-US/about/manifesto/), a non profit company that [respects my privacy](https://www.mozilla.org/en-US/firefox/privacy/).

I use the following extensions to protect my privacy while browsing the web:

* Adblocker - [uBlock Origin](https://github.com/gorhill/uBlock)
* Tracker Blocker - [Privacy Badger](https://privacybadger.org/)
  * Firefox now includes tracker blocking, but I leave Privacy Badger enabled.
* [Cookie Autodelete](https://github.com/Cookie-AutoDelete/Cookie-AutoDelete)
  * Removes cookies from websites that are not in my whitelist whenever a tab is closed. An additional precaution to tracker blocking.
* [Decentraleyes](https://decentraleyes.org/)
  * Caches CDN links locally and intercepts requests to serve from the cache. Prevents CDNs from tracking you across websites.

## IDE

VS Code is my preferred code editor. You can view all of my VS Code settings / extensions [here](https://github.com/Laslo89/fresh-dev-start/blob/master/vscode.md).
