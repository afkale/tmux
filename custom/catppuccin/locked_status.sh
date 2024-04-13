show_locked_status() {
  local index icon color module
  
  index=$1
  icon="$(get_tmux_option "@catppuccin_blocked_status_icon" "#{?@locked,󰌾,󰌿}")"
  color=$(get_tmux_option "@catppuccin_blocked_status_color" "#{?@locked,$thm_red,$thm_orange}")
  module=$(build_status_module "$index" "$icon" "$color")
  echo "$module"
}
