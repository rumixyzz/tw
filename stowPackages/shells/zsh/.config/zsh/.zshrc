#!/usr/bin/zsh
autoload -Uz colors && colors
export PS1="%F{red}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f%F{cyan} %f%F{magenta}%~%f%F{red}]%f%F{cyan}$%f "
