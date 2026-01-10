# https://gist.github.com/danydev/4ca4f5c523b19b17e9053dfa9feb246d
# README: This allows you to store in your history file only commands
# with a successful status (or forced exited by you with signal 2).
# Put this content in your .zhsrc
# CREDITS: inspired by https://scarff.id.au/blog/2019/zsh-history-conditional-on-command-success/

# This function will be hooked to zshaddhistory.
# zshaddhistory is called before a history line is saved.  See zshmisc(1).
function my_zshaddhistory() {
  # Prevent the command from being written to history before it's
  # executed; save it to LASTHIST instead.  Write it to history
  # in other hooks (precmd and zshexit)
  LASTHIST=$1
  # Return value 2: "... the history line will be saved on the internal
  # history list, but not written to the history file".
  return 2
}

function save_last_command_in_history_if_successful() {
  # Write the last command if successful (or closed with signal 2), using 
  # the history buffered by my_zshaddhistory().
  if [[ ($? == 0 || $? == 130) && -n $LASTHIST && -n $HISTFILE ]] ; then
    print -sr -- ${=${LASTHIST%%'\n'}}
  fi
}

# add our hook to both 'precmd' (executed before any command) and to zshexit
# (executed after exiting a shell).
add-zsh-hook precmd save_last_command_in_history_if_successful
add-zsh-hook zshexit save_last_command_in_history_if_successful
add-zsh-hook zshaddhistory my_zshaddhistory
