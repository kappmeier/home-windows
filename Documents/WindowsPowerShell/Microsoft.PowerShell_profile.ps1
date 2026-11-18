# Define home alias for git in the home directory
function home { git --work-tree=$HOME --git-dir="$HOME\.home.git" @args }
