if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish

abbr lsa "ls -la"

set fish_greeting

set -Ux COREPACK_ENABLE_AUTO_PIN 0

starship init fish | source

