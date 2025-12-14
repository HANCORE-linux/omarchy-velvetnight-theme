set -l color00 '#0A101F'
set -l color01 '#811139'
set -l color02 '#5C637A'
set -l color03 '#e5af1b'
set -l color04 '#9099a5'
set -l color05 '#e2687c'
set -l color06 '#C24F40'
set -l color07 '#F5ECDF'
set -l color08 '#2C2E47'
set -l color09 '#e21d63'
set -l color0A '#5C637A'
set -l color0B '#f0d17c'
set -l color0C '#9099a5'
set -l color0D '#e88595'
set -l color0E '#DC9B68'
set -l color0F '#C7D3E0'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
