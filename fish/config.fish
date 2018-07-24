# Set Path
set PATH ~/.nodebrew/current/bin $PATH
set PATH ~/Library/Android/sdk/platform-tools $PATH
set PATH ~/Library/Android/sdk/tools $PATH
set -x PATH $HOME/.pyenv/bin $PATH

# pyenv init
eval (rbenv init - | source)
. (pyenv init - | psub)

# alias
alias rm "rmtrash"
alias emacs "/Applications/Emacs.app/Contents/MacOS/Emacs -nw -q -l ~/.emacs.d/cli.el"
alias o "open"

# cd > ls
function cd
  builtin cd $argv
  ls -a
end