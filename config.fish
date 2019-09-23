# Set Path
set PATH ~/.nodebrew/current/bin $PATH
set PATH ~/.scripts $PATH
set PATH ~/Library/Android/sdk/platform-tools $PATH
set PATH ~/Library/Android/sdk/tools $PATH
set PATH /usr/local/opt/mysql@5.7/bin/ $PATH
set PATH ~/.cargo/bin $PATH
set -x LESSOPEN "| src-hilite-lesspipe.sh %s"
set -x LESS '-R'
set -x PATH $HOME/.pyenv/bin $PATH

# pyenv init
# eval (rbenv init - | source)
. (pyenv init - | psub)

# alias
alias rm "rmtrash"
alias emacs "/Applications/Emacs.app/Contents/MacOS/Emacs -nw -q -l ~/.emacs.d/cli.el"
alias o "open"
# alias g++ "g++-8"
alias cr "cd (git rev-parse --show-toplevel)"
alias pull "git pull"
alias push "git push"
alias gc "cd (ghq root)/(ghq list | peco)"
alias diff "colordiff -u"
alias ag 'ag -S'
alias ec2s "aws ec2 describe-instances --query 'Reservations[].Instances[].{Name:Tags[?Key==`Name`].Value,InstanceId:InstanceId,PublicIp:PublicIpAddress}' --output text"
alias enja "pbpaste | xargs -I {} aws translate translate-text --text '{}' --source-language-code en --target-language-code ja | jq .TranslatedText"
alias jaen "pbpaste | xargs -I {} aws translate translate-text --text '{}' --source-language-code ja --target-language-code en | jq .TranslatedText"

function jisless
		 iconv -f SJIS $argv | less
end

# cd > ls
# TOOD: なれないし'cd -'が使えないから実装が微妙
# function cd
#   builtin cd $argv
#   ls -a
# end

# override bobthefish
set -g theme_display_date no

# tmuxを開く設定
function start_tmux
    if command -s tmux > /dev/null
	   tmux -2 new-session
        # if test -z "$TMUX"; and test -z $TERMINAL_CONTEXT
        #     tmux -2 attach; or tmux -2 new-session
        # end
    end
end

# start_tmux

# AWS CLIの補完用
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
set -g fish_user_paths "/usr/local/opt/php@7.2/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/php@7.2/sbin" $fish_user_paths