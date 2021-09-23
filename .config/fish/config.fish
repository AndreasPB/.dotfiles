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

