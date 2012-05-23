export LESS="-R"
export EDITOR=emacs
export ESHELL="ipython gui='qt4'"
export ETS_TOOLKIT='qt4'

source ~/.git_completion.sh

PS1='\[\e[0:36m\]\W$(__git_ps1 " (%s)") [\#]\$ \[\e[m\] '
#PS1="\e[0:34m\W [\#]\$ \e[m"

export GIT_PS1_SHOWDIRTYSTATE="True"
