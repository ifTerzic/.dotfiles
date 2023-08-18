# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  or set -gx OMF_PATH "$HOME/.local/share/omf"
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
