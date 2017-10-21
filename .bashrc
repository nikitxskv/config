alias ya=~/arcadia/ya
export PYTHONPATH=:/home/nikitxskv/arcadia/catboost/python-package
export TERM=screen-256color
alias ta="tmux -u a -t"
alias tn="tmux -u new -s"
alias tls="tmux -u ls"
alias svn-ru="svn status | grep '^?' | awk '{print $2}' | xargs rm -rf"
alias ss="svn status"
alias sa="svn add"
alias sc="svn commit"
alias sup="svn up"
alias yap="ya make -r -DUSE_ARCADIA_PYTHON=no -DPYTHON_CONFIG=python2-config"
alias yar="R CMD INSTALL . --build"
alias vim="ya vim"
