set -l color00 '#060b16'
set -l color01 '#811139'
set -l color02 '#353e4d'
set -l color03 '#e5af1b'
set -l color04 '#9099a5'
set -l color05 '#e2687c'
set -l color06 '#b8b9bc'
set -l color07 '#e7eaef'
set -l color08 '#626b78'
set -l color09 '#e21d63'
set -l color0A '#4a576c'
set -l color0B '#f0d17c'
set -l color0C '#9099a5'
set -l color0D '#e88595'
set -l color0E '#b8b9bc'
set -l color0F '#ffffff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
