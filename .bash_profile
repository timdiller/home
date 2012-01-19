
# Setting PATH for EPD-7.0-2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

#http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#PS1="\e[0:34m\W [\#]\$ \e[m"

alias py="ipython --pylab"
alias ipy="ipython"
alias ll="ls -Glpsht"
alias la="ls -Ga"
alias ls="ls -G"
# Setting PATH for EPD-7.1-1
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

#export QT_API=pyqt
export QT_API=pyside

source ~/.bashrc
# Setting PATH for EPD-7.2-1
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

##
# Your previous /Users/tdiller/.bash_profile file was backed up as /Users/tdiller/.bash_profile.macports-saved_2012-01-05_at_08:04:23
##

# MacPorts Installer addition on 2012-01-05_at_08:04:23: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

