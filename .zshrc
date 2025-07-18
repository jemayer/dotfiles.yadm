# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder    # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 14

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages git tmux vundle)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='vim'

# Enable ZSH Syntax Highlighting
# Debian via apt
[[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# MacOS via Homebrew
[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# With GNU ls, e.g. on Linux, ls shows colors if --color is passed on
# the command line. The actual colors are configured through the LS_COLORS
# environment variable, which can be set with the dircolors command
# (built-in defaults are used if this variable is not set).
#
# Set directory colors to match solarized

if [ -x /usr/bin/dircolors ]; then
    export LSCOLORS='gxfxbEaEBxxEhEhBaDaCaD'
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -l'
alias la='ls -al'

# cd aliases
alias ..='cd ..'

# wttr.in aliases
alias wttr='curl de.wttr.in/Hamburg'
alias wttrng='curl v2.wttr.in/Hamburg'

# Canonical's appstore for Linux
# https://snapcraft.io
if [ -x /usr/bin/snap ]; then
    path+=('/snap/bin')
    export PATH
fi

# Respect local Go installations
if [ -d /usr/local/go ]; then
    path+=('/usr/local/go/bin')
    export PATH
fi

# Respect local path
if [ -d $HOME/.local/bin ]; then
    path+=("$HOME/.local/bin")
    export PATH
fi

# NVM
if [ -d $HOME/.nvm ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

# MacOS specific aliases
if [ $(uname) = "Darwin" ] ; then
    # On FreeBSD and Mac OS X, ls shows colors if the CLICOLOR environment
    # variable is set or if -G is passed on the command line. The actual
    # colors are configured through the LSCOLORS environment variable
    # (built-in defaults are used if this variable is not set).
    export CLICOLOR=1
    export LSCOLORS='gxfxbEaEBxxEhEhBaDaCaD'

    # Color grep for OSX.
    alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'

    # Flush DNS cache.
    alias flushdns='sudo killall -HUP mDNSResponder'

    # Rebuild finder menu, wipe duplicates
    alias rebuildmenu='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user'

    # Reinitialize the dock.
    alias killdock='killall -KILL Dock'

    # Reinitialize the finder.
    alias killfinder='killall -KILL Finder'

    # Show/Hide desktop icons
    alias showicons='defaults write com.apple.finder CreateDesktop true; killall Finder'
    alias hideicons='defaults write com.apple.finder CreateDesktop false; killall Finder'

    # Python (Homebrew)
    [ -d "$(brew --prefix)/opt/python@3/libexec/bin" ] && path+=("$(brew --prefix)/opt/python@3/libexec/bin")

 fi

# Include machine specific aliases
[ -f ~/.aliases_local ] && source ~/.aliases_local


