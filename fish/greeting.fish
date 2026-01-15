function fish_greeting
{{#if (is_executable "fastfetch")}}
  if test "$TERM" = 'xterm-ghostty'
    if set -q SSH_CLIENT; echo; end
    fastfetch
  end
  echo
{{/if}}
end
