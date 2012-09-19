# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
PATH="/usr/local/texlive/2012/bin/universal-darwin:${PATH}"
export PATH

INFOPATH="/usr/local/texlive/2012/texmf/doc/info:${INFOPATH}"
export INFOPATH

MANPATH="/usr/local/texlive/2012/texmf/doc/man:${MANPATH}"
export MANPATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

#http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#PS1="\e[0:34m\W [\#]\$ \e[m"

alias py="ipython --pylab"
alias ipy="ipython"
alias ll="ls -Glpsht"
alias la="ls -Ga"
alias ls="ls -G"
alias octave="/Applications/Octave.app/Contents/Resources/bin/octave"
alias py27="/Library/Frameworks/Python.framework/Versions/7.3/bin/python"
alias ipy27="/Library/Frameworks/Python.framework/Versions/7.3/bin/ipython"
#alias python3="/Library/Frameworks/Python.framework/Versions/3.2/bin/python3"
# rpmac_script has to be run from the top level of the BHP_RPMAC repository
UPSCALED_LAS="docs/trends/matlab_scripts/LAS_UPSCALED"
alias db_rpmac_script="python -m ipdb tlmock/run.py --las $UPSCALED_LAS/ALTAIR-1_RPUpscaled.las --las $UPSCALED_LAS/BEG-1_RPUpscaled.las --las $UPSCALED_LAS/CALTHORPE-1A_RPUpscaled.las --las $UPSCALED_LAS/ENFIELD-4_RPUpscaled.las --las $UPSCALED_LAS/ESKDALE-1_RPUpscaled.las --las $UPSCALED_LAS/ESKDALE-2_RPUpscaled.las --las $UPSCALED_LAS/FURNESS-1_RPUpscaled.las --las $UPSCALED_LAS/INDIAN-1_RPUpscaled.las --las $UPSCALED_LAS/KNOTT-1_RPUpscaled.las --las $UPSCALED_LAS/LAVERDA-1_RPUpscaled.las --las $UPSCALED_LAS/MONTESA-1_RPUpscaled.las --las $UPSCALED_LAS/RESOLUTION-1_RPUpscaled.las --las $UPSCALED_LAS/SKIDDAW-1_RPUpscaled.las --las $UPSCALED_LAS/STYBARROW-1_RPUpscaled.las --las $UPSCALED_LAS/STYBARROW-3_RPUpscaled.las --las $UPSCALED_LAS/ZEEWULF-1_RPUpscaled.las --ref TVDBML"
alias rpmac_script="python tlmock/run.py --las $UPSCALED_LAS/ALTAIR-1_RPUpscaled.las --las $UPSCALED_LAS/BEG-1_RPUpscaled.las --las $UPSCALED_LAS/CALTHORPE-1A_RPUpscaled.las --las $UPSCALED_LAS/ENFIELD-4_RPUpscaled.las --las $UPSCALED_LAS/ESKDALE-1_RPUpscaled.las --las $UPSCALED_LAS/ESKDALE-2_RPUpscaled.las --las $UPSCALED_LAS/FURNESS-1_RPUpscaled.las --las $UPSCALED_LAS/INDIAN-1_RPUpscaled.las --las $UPSCALED_LAS/KNOTT-1_RPUpscaled.las --las $UPSCALED_LAS/LAVERDA-1_RPUpscaled.las --las $UPSCALED_LAS/MONTESA-1_RPUpscaled.las --las $UPSCALED_LAS/RESOLUTION-1_RPUpscaled.las --las $UPSCALED_LAS/SKIDDAW-1_RPUpscaled.las --las $UPSCALED_LAS/STYBARROW-1_RPUpscaled.las --las $UPSCALED_LAS/STYBARROW-3_RPUpscaled.las --las $UPSCALED_LAS/ZEEWULF-1_RPUpscaled.las --ref TVDBML"
#export QT_API=pyqt
export QT_API=pyside

source ~/.bashrc

##
# Your previous /Users/tdiller/.bash_profile file was backed up as /Users/tdiller/.bash_profile.macports-saved_2012-01-05_at_08:04:23
##

# MacPorts Installer addition on 2012-01-05_at_08:04:23: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for EPD-6.0.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

PYTHONPATH="/Users/tdiller/enthought/BHP_RPMAC/tlmock:${PYTHONPATH}"
export PYTHONPATH
