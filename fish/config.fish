set -U fish_greeting

# Interactive shell setup
if status is-interactive

    # aliases
    alias ls='eza --icons'
    alias c='clear'
    alias cd='z'

    # zoxide
    zoxide init fish | source

    # starship
    starship init fish | source

    # ssh-agent
    if not set -q SSH_AUTH_SOCK
        eval (ssh-agent -c)
    end
end
