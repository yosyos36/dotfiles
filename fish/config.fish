############################
# Set Path
############################
set PATH ~/.nodebrew/current/bin $PATH
set PATH ~/.scripts $PATH
set PATH ~/.scripts/private $PATH
set -x ANDROID_HOME $HOME/Library/Android/sdk
set PATH ~/Library/Android/sdk/platform-tools $PATH
set PATH ~/Library/Android/sdk/tools $PATH
set PATH ~/Library/Android/sdk/tools/bin $PATH
set PATH /usr/local/opt/mysql@5.7/bin/ $PATH

set PATH ~/.cargo/bin $PATH
set -x JAVA_HOME (/usr/libexec/java_home -v1.8)
set -x PATH $HOME/.pyenv/bin $PATH


set -x LESSOPEN "| /usr/local/bin/src-hilite-lesspipe.sh %s"
set -x LESS "-R"

set -x PATH (echo $PATH | tr ' ' '\n' | sort -u)

############################
# alias
############################
alias rm "rmtrash"
alias emacs "/Applications/Emacs.app/Contents/MacOS/Emacs -nw -q -l ~/.emacs.d/cli.el"
alias o "open"
alias g++ "g++-8"
alias cr "cd (git rev-parse --show-toplevel)"
alias pull "git pull"
alias push "git push"
alias gc "cd (ghq root)/(ghq list | peco)"
alias diff "colordiff"
alias ag 'ag --pager="less -R"'

# AWS CLI
alias el ec2-launcher
alias ej "english_to_japanese | less"
alias je "japanese_to_english | less"

# complete
complete -c aws -f -a '(begin; set -lx COMP_SHELL fish; set -lx COMP_LINE (commandline); aws_completer; end)'

# pyenv
. (pyenv init - | psub)

############################
# functions
############################
function targz
	tar -zcvf $argv[2].tar.gz $argv[1]
end
