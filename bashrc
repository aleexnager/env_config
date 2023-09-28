PERSONAL SETTING

installations
=====================================
sudo apt install gcc
sudo apt install git


.bashrc
=====================================
# MY PERSONAL SCRIPTS
mkcd() {
  mkdir -p "${1}"
  cd "${1}"
}

# This may be already set in your .bashrc file, if so, dont add this func
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# PROMPT
# username@G501VW: (green), actaul_dir (cyan) ? (non)
#PS1='\e[1;32m\u@G501VW:\e[0m \e[1;36m\W\e[0m ? '

# [time_24h | actual_dir] (cyan) ? (non)
#PS1='\e[0;36m[\t | \W]\e[0m ? '

# [path_to_dir] (cyan) ? (green)
PS1='\e[0;36m[\w] \e[1;32m?\e[0m '


# NEOFETCH RANDOM IMAGES
list=(cd ~/Pictures/terminal | ls -l | awk '{print $9}')
n=(cd ~/Pictures/terminal | ls | wc -l)
i=(RANDOM%n)
Pictures/terminal/${list[i]}

.bash_aliases
=====================================
alias cl='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias l='ls -CF'
alias l.='ls -d .* --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -alF'
alias update='sudo apt update && sudo apt upgrade'
alias h='history'
alias cdpic='cd /home/aleexnager/Pictures'
