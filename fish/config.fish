fish_add_path /opt/homebrew/opt/rustup/bin
{{#if (is_executable "orb")}}
source ~/.orbstack/shell/init2.fish
{{/if}}

alias wget 'wget -c --no-hsts'
if not status is-interactive
  return
end

abbr -a ..  'cd ..'
abbr -a ... 'cd ../..'
abbr -a --position anywhere \
  -- '??' '--help | bat -pl help'

alias egrep 'egrep --color=auto'
alias fgrep 'fgrep --color=auto'
alias grep  'grep --color=auto'
alias la    'eza -a --group-directories-first'
alias ll    'eza -al --group-directories-first'
alias lt    'eza -aTL 3 --group-directories-first'
