# .bashrc
#  ____   __   ___   __   _  _ ____  __
# (  _ \ /__\ / __) /__\ ( \( (_  _)/__\       https://www.basantarai.com.np
#  ) _ </(__)\\__ \/(__)\ )  (  )( /(__)\      https://github.com/iambasanta
# (____(__)(__(___(__)(__(_)\_)(__(__)(__)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Basic bash settings
export EDITOR="vim"
export TERMINAL="alacritty"
shopt -s cdspell
complete -d cd

# Prompt setting
declare -a PROMPTS
PROMPTS=(
    "∮"
    "∯"
    "≎"
)
index=$(shuf -i 0-$((${#PROMPTS[@]}-1)) -n 1)
ignition=${PROMPTS[$index]}
PS1='\e[1;36m\w\e[0m \e[0;32m$ignition\e[0m '


# Aliases
source ~/.aliases
