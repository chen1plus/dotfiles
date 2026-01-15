function fish_greeting
  if test "$TERM" = 'xterm-ghostty'
    if set -q SSH_CLIENT; echo; end
    fastfetch
  end
  echo
end
