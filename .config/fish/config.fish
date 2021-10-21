starship init fish | source
zoxide init fish | source

function fish_greeting
        if not type fortune > /dev/null 2>&1
                sudo apt-get install fortune
        end
        if not type cowsay > /dev/null 2>&1
                sudo apt-get install cowsay
        end
        if not type lolcat > /dev/null 2>&1
                sudo apt-get install lolcat
        end
        fortune -a | cowsay -f bud-frogs | lolcat
end

alias str="cd ~/Repo/streamchaser/ && docker-compose exec backend python3 cli.py"
alias g="git"
alias ga="git add ."
alias gco="git commit -m"
alias gcoa="git commit --amend"
alias gcoan="git commit --amend --no-edit"
alias gd="git diff"
alias gst"git status"
alias gch="git checkout"
alias gchm="git checkout master"
alias gchd="git checkout development"
alias gpf="git push --force-with-lease origin"
