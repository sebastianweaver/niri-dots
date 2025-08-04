HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

#setopt autocd extendedglob nomatch notify
unsetopt beep
#bindkey -v

## LOAD FASTFETCH
if [[ $(ps -o ppid= -p $$ | xargs ps -o comm= -p) == "kitty" && ! -n $TMUX ]]; then fastfetch; else fastfetch --file $HOME/.config/fastfetch/ascii.txt;fi

ZSH_THEME="agnoster"
HIST_STAMPS="mm/dd/yyyy"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(colored-man-pages cp tmux zsh-autosuggestions zsh-syntax-highlighting)

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

#############
## EXPORTS ##
#############
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export LANG=en_US.UTF-8
export EDITOR=nvim
export VISUAL=nvim
export MOZ_ENABLE_WAYLAND=1
export DISPLAY
export MANPAGER='nvim +Man!'

#source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.cache/wal/colors-tty.sh
source ~/.cache/wal/colors.sh
source ~/.zshared #function home

#############
## ALIASES ##
#############
## Speedtest python scriptaroo
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"

## Colorize grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Colorize the ls output ##
alias ls='ls --color=auto'

## Show hidden files ##
alias l.='ls -d .* --color=auto'
alias ll='ls -ltrAh --color=auto'

## UPLOAD CATS = pipe output by adding " | tb" after the command
alias tb="nc termbin.com 9999"

## COMPRESS FILE - archive first and the folder second for both compressing and extracting
alias squish='tar -zcvf'
alias unsquish='tar -zxvf'

## GENERATE AN SSH KEYPAIR
alias sshkeygen='ssh-keygen -t ed25519'

## CHECK FILE SUM
alias checksum='md5sum'

## CHECK DIFFERENCES BETWEEN LSUSB OUTPUTS
alias lsusbdiff='lsusb > /tmp/lsusb.txt && echo "5 seconds to plug the usb device" && sleep 5 && lsusb | diff -y - /tmp/lsusb.txt'

## CLEAN PACMAN, YAY AND PARU LEFTOVERS
alias janitor="sudo pacman -Scc && sudo yay -Scc && sudo pacman -Qtdq | sudo pacman -Rns -"

## SEARCH FOR YOUTUBE VIDEOS FROM terminal
alias youtube="ytfzf -t"

## REFRESH USBSTICKS
alias refreshusb='cat /dev/zero | tr '\000' '\377' | dd of=ones bs=4M iflag=fullblock ; sync'

## RSYNC BACKUP
alias backitup='rsync -Pr --append-verify --delete'

## RELOAD FONT CACHE
alias rlfont='fc-cache -f -v'

## EDIT TMUX 
alias editmux='nvim $HOME/.config/tmux/tmux.conf && tmux source $HOME/.config/tmux/tmux.conf'

## FASTFETCH QUICK...
alias ff='fastfetch'

## MISC
alias stock='ticker --show-fundamentals --interval 5 --watchlist AMD,NVDA'
alias waybar='systemctl --user restart waybar'
alias wallpaper='wal -o pywal-discord -o ~/.config/scripts/build-gradience.py -i ~/Pictures/Wallpapers/'
alias fucking='sudo'
alias pacman='sudo pacman'
alias matrix='unimatrix'

zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

## https://hacdias.com/2021/05/30/cd-alias-completions-zsh/
typeset -A cd_aliases
cd_aliases=(
    [config]="$HOME/.config"
    [downloads]="$HOME/Downloads"
    [cdautostart]="/etc/xdg/autostart"
    [systemd]="/etc/aresystemd/system"
    [userd]="/etc/systemd/user/"
    [zen]="$HOME/.zen/2zr8armx.Default (release)/chrome"
)

for k in "${(@k)cd_aliases}"; do
    function $k() {
        cd "$cd_aliases[$0]/$1"
    }

function _$k() {
    ((CURRENT == 2)) && _files -/ -W $cd_aliases[${0:1}]
}

compdef _$k $k
done

############
##  ????  ##
############

#eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/catppuccin_macchiato.omp.json)"
eval "$(oh-my-posh init zsh --config ~/.cache/wal/colors-omp.json/)"

(cat ~/.cache/wal/sequences &)

