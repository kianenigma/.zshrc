# Rust bins
export PATH=$PATH:$HOME/.cargo/bin
# NPM bins
export PATH=$PATH:$HOME/.npm-global/bin

export ZSH="/Users/kianenigma/.oh-my-zsh"

ZSH_THEME="wezm"
# ZSH_THEME="theunraveler"
# ZSH_THEME="sunrise"
# ZSH_THEME="risto"
# ZSH_THEME="fishy"
# ZSH_THEME="gentoo"
# ZSH_THEME="robbyrussell"

plugins=(git cargo rust zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias zshconfig="code ~/.zshrc"
alias sourceit="source ~/.zshrc"
alias c="clear"
alias xx="exit"
alias vi="nano"
alias vim="nano"
# a better ls
alias ll="exa -lah"

# Git
alias gis='git status'
alias gil='git log'
alias gull='git pull origin '
alias gica='git commit -a -m '
alias gush='git push origin '
alias granch='git branch '
alias gich='git checkout '
alias gif='git diff'
alias gifa='git fetch --all'
alias giaa='git add --all'
alias gia='git add .'
alias girha='git reset --hard'
alias glon='git clone'

# VPS aliases
alias VPS="ssh root@xxx"

# VU ssh

# Parity related
alias parity-vpn-down="wg-quick down ~/.config/wireguard/wg0.conf"
alias parity-vpn-up="wg-quick up ~/.config/wireguard/wg0.conf"
alias beast="ssh kianenigma@xxx"
alias tomek="ssh kianenigma@xxx"

# Substrate related
function subgrep() {
	rg "(enum|struct|fn|trait|impl<.*>|type) $1"
}

# Rust related stuff. From https://github.com/athei
latest_ra() {
	git ls-remote --tags https://github.com/rust-analyzer/rust-analyzer.git  | awk -F/ '{ print $3 }' | grep -v nightly | grep -v guide |  sort -r | head -n 1
}

update_ra() {
	vers=$(latest_ra)
	echo "Installing rust-analyzer from tag $vers"
	cargo install --git https://github.com/rust-analyzer/rust-analyzer.git --tag $vers --force rust-analyzer
}
