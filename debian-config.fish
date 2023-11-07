sudo apt install autojump fzf

set fish_greeting

# starship
starship init fish | source

# alias
## configs
alias fc="nvim ~/.config/fish/config.fish"
alias kc="nvim ~/.config/kitty/kitty.conf"
alias fs="source ~/.config/fish/config.fish"
alias tmuxconfig="nvim ~/.config/tmux/tmux.conf"
alias vimconfig="nvim ~/.vimrc"
alias ssc="nvim ~/.config/starship.toml"
## Replacement
alias ls="exa --icons"
alias v="vifm"
## Shortcut
alias cl="clear"
alias home="cd ~"
alias ".."="cd .."
alias e="exit"
alias op="xdg-open ."
alias nv="nvim"

set -U EDITOR nvim
set -U VISUAL nvim

# cargo & rustup
fish_add_path ~/.cargo/bin/
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup # for stable
# set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup # for nightly
# set -x RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static
# set -x RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup

# vifm
# NOTE: Remember that a function in shell is something you can call in terminal
# function v
#     set -l dst (command vifm . --choose-dir - $argv)
#     if test -z "$dst"
#         echo 'Directory picking cancelled/failed'
#         return 1
#     end
#     cd "$dst"
# end

# fzf
function FZF
    bind \cs 'fd -H | fzf --height 20'
end

FZF

# autojump
set -l AUTOJUMP_PATH /opt/homebrew/share/autojump/autojump.fish
source $AUTOJUMP_PATH
