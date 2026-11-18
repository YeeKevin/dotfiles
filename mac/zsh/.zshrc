# aliases
alias zshrc='subl ~/.zshrc'
alias src='source ~/.zshrc'

alias obs='open -a Obsidian'
alias disc='open -a Discord'
alias spot='open -a Spotify'
alias ij='open -a "IntelliJ IDEA" .'		# open the current folder in IntelliJ
alias st='open -a "Sublime Text" .'
alias f='open .'							# current folder in Finder

# Spotify controls
alias pp='osascript -e "tell application \"Spotify\" to playpause"'
alias next='osascript -e "tell application \"Spotify\" to next track"'
alias song='osascript -e "tell application \"Spotify\" to (name of current track) & \" - \" & (artist of current track)"'

# Git
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'				# review before committing
alias gl='git log --oneline --graph -15'
function ga { git add "$@" && git status; }
alias ga.='git add . && git status'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gi='git init'
alias ls='eza --icons --group-directories-first'
alias ll='eza -la --icons --git --group-directories-first'
alias cat='bat --paging=never'
export BAT_THEME="ansi"

#GitHub CLI
alias gb='gh browse'
# alias gpr='gh pr create --web'

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# must stay last
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
