# shellcheck shell=bash disable=SC2034

# COLORS

# background for frappe catppuccin terminal theme
# thm_bg="#303446"

# background for macchiato catppuccin terminal theme
thm_fg="{{onPrimary.hex}}"
thm_bg="{{primary.hex}}"
thm_secondary_fg="{{onSecondary.hex}}"
thm_secondary="{{secondary.hex}}"
thm_tertiary_fg="{{onTertiary.hex}}"
thm_tertiary="{{tertiary.hex}}"
thm_surface_fg="{{onSurface.hex}}"
thm_surface="{{surface.hex}}"
thm_surfacevar_fg="{{onSurfaceVariant.hex}}"
thm_surfacevar="{{surfaceVariant.hex}}"
thm_error_fg="{{onError.hex}}"
thm_error="{{error.hex}}"
thm_cyan="#99d1db"
thm_black="#292c3c"
thm_gray="#414559"
thm_magenta="#ca9ee6"
thm_pink="#f4b8e4"
thm_blue="#8caaee"
thm_black4="#626880"
rosewater="#f2d5cf"
flamingo="#eebebe"
pink="#f4b8e4"
mauve="#ca9ee6"
red="#e78284"
maroon="#ea999c"
peach="#ef9f76"
yellow="#e5c890"
green="#a6d189"
teal="#81c8be"
sky="#99d1db"
sapphire="#85c1dc"
blue="#8caaee"
lavender="#babbf1"
text="#c6d0f5"
subtext1="#b5bfe2"
subtext0="#a5adce"
overlay2="#949cbb"
overlay1="#838ba7"
overlay0="#737994"
surface2="#626880"
surface1="#51576d"
surface0="#414559"
base="#303446"
mantle="#292c3c"
crust="#232634"
eggplant="#e889d2"
sky_blue="#a7c7e7"
spotify_green="#1db954"
spotify_black="#191414"

TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""
TMUX_POWERLINE_SEPARATOR_THIN="│"
TMUX_POWERLINE_BLOCK="█"

# See Color formatting section below for details on what colors can be used here.
TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-$thm_surface}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-$thm_bg}
TMUX_POWERLINE_SEG_AIR_COLOR=$(air_color)

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

# See `man tmux` for additional formatting options for the status line.
# The `format regular` and `format inverse` functions are provided as conveinences

# shellcheck disable=SC2128
if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_CURRENT" ]; then
  TMUX_POWERLINE_WINDOW_STATUS_CURRENT=(
    "#[$(format inverse)]"
    "$TMUX_POWERLINE_BLOCK"
    "#[$(format regular)]"
    "$TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR"
    "#[$(format inverse)]"
    " #I#F "
    "$TMUX_POWERLINE_SEPARATOR_THIN"
    " #W "
    "#[$(format regular)]"
    "$TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR"
    "#[$(format inverse)]"
    "$TMUX_POWERLINE_BLOCK"
  )
fi

# shellcheck disable=SC2128
if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_STYLE" ]; then
  TMUX_POWERLINE_WINDOW_STATUS_STYLE=(
    "$(format regular)"
  )
fi

# shellcheck disable=SC2128
if [ -z "$TMUX_POWERLINE_WINDOW_STATUS_FORMAT" ]; then
  TMUX_POWERLINE_WINDOW_STATUS_FORMAT=(
    "#[$(format regular)]"
    "  #I#{?window_flags,#F, } "
    "$TMUX_POWERLINE_SEPARATOR_THIN"
    " #W "
  )
fi

# shellcheck disable=SC1143,SC2128
if [ -z "$TMUX_POWERLINE_LEFT_STATUS_SEGMENTS" ]; then
  TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
    "pwd $thm_surfacevar $thm_surfacevar_fg"
    #"ifstat 30 255"
    #"ifstat_sys 30 255"
    # "lan_ip $sky_blue $thm_bg ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}"
    # "wan_ip $sky_blue $thm_bg"
    #"air ${TMUX_POWERLINE_SEG_AIR_COLOR} $thm_bg"
  )
fi

# shellcheck disable=SC1143,SC2128
if [ -z "$TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS" ]; then
  TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
    "vcs_branch $thm_surfacevar $thm_secondary"
    # "vcs_compare 60 255"
    "vcs_staged $sky 0"
    "vcs_modified $thm_error $thm_error_fg"
    "vcs_others $lavender 0"
    "tmux_session_info $thm_tertiary $thm_tertiary_fg"
    # "earthquake 3 0"
    # "hostname $thm_secondary $thm_secondary_fg"
    #"macos_notification_count 29 255"
    #"mailcount 9 255"
    # "now_playing $spotify_green $spotify_black"
    #"cpu 240 136"
    #"load 237 167"
    #"tmux_mem_cpu_load 234 136"
    # "battery $blue $thm_bg"
    #"weather 37 255"
    #"rainbarf 0 ${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR}"
    #"xkb_layout 125 117"
    # "date $teal $thm_bg ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
    # "date $teal $thm_bg"
    # "time $teal $thm_bg ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
    #"utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
  )
fi
