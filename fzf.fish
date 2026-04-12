set -l color00 '#1b0f0c'
set -l color01 '#8f2f2f'
set -l color02 '#466b61'
set -l color03 '#c19359'
set -l color04 '#5a4432'
set -l color05 '#8d623b'
set -l color06 '#ab7f53'
set -l color07 '#d8c8b4'
set -l color08 '#4e3024'
set -l color09 '#b44949'
set -l color0A '#61897d'
set -l color0B '#d9b67e'
set -l color0C '#7a6a5f'
set -l color0D '#b9835c'
set -l color0E '#d2aa73'
set -l color0F '#e6d7c3'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
