# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jeon/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/jeon/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jeon/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jeon/.fzf/shell/key-bindings.zsh"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview="head -n 100 {}" --preview-window=right:50%'
alias vf='vim `fzf`'
