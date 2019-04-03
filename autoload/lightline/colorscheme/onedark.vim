function! s:flat(color)
  return [a:color.gui, a:color.cterm]
endfunction

let s:bold = get(g:, 'lightline#onedark#disable_bold_style', 0) ? '' : 'bold'
let s:colors = onedark#GetColors()

let s:light_red     = s:flat(s:colors.red)
let s:green         = s:flat(s:colors.green)
let s:blue          = s:flat(s:colors.blue)
let s:light_yellow  = s:flat(s:colors.yellow)
let s:black         = s:flat(s:colors.black)
let s:white         = s:flat(s:colors.white)
let s:gutter_grey   = s:flat(s:colors.gutter_fg_grey)
let s:cursor_grey   = s:flat(s:colors.cursor_grey)
let s:visual_grey   = s:flat(s:colors.visual_grey)
let s:special_grey  = s:flat(s:colors.special_grey)

let s:tab_color     = s:blue
let s:normal_color  = s:blue
let s:insert_color  = s:green
let s:replace_color = s:light_red
let s:visual_color  = s:light_yellow
let s:active_bg     = s:visual_grey
let s:inactive_bg   = s:special_grey

let s:tab_bg        = [ '#21252B', 255 ]
let s:tab_active_bg = s:black

let g:lightline#colorscheme#onedark#palette = lightline#colorscheme#flatten({
  \   'normal': {
  \     'left':     [ [ s:black, s:normal_color, s:bold ], [ s:white, s:active_bg ] ],
  \     'middle':   [ [ s:normal_color, s:tab_bg        ] ],
  \     'right':    [ [ s:black, s:normal_color         ], [ s:white, s:active_bg ] ],
  \     'error':    [ [ s:black, s:light_red    ] ],
  \     'warning':  [ [ s:black, s:light_yellow ] ],
  \    },
  \   'insert': {
  \     'left':     [ [ s:black, s:insert_color, s:bold ], [ s:white, s:active_bg ] ],
  \     'middle':   [ [ s:insert_color, s:tab_bg        ] ],
  \     'right':    [ [ s:black, s:insert_color         ], [ s:white, s:active_bg ] ],
  \   },
  \   'replace': {
  \     'left':     [ [ s:black, s:replace_color, s:bold ], [ s:white, s:active_bg ] ],
  \     'middle':   [ [ s:replace_color, s:tab_bg        ] ],
  \     'right':    [ [ s:black, s:replace_color         ], [ s:white, s:active_bg ] ],
  \   },
  \   'visual': {
  \     'left':     [ [ s:black, s:visual_color, s:bold ], [ s:white, s:active_bg ] ],
  \     'middle':   [ [ s:visual_color, s:tab_bg        ] ],
  \     'right':    [ [ s:black, s:visual_color         ], [ s:white, s:active_bg ] ],
  \   },
  \   'inactive': {
  \     'left':     [ [ s:white, s:tab_bg ], [ s:white, s:inactive_bg ] ],
  \     'middle':   [ [ s:white, s:tab_bg ] ],
  \     'right':    [ [ s:white, s:tab_bg ], [ s:white, s:inactive_bg ] ],
  \   },
  \   'tabline': {
  \     'left':      [ [ s:gutter_grey, s:tab_bg ] ],
  \     'right':     [ [ s:tab_color,   s:tab_bg ] ],
  \     'middle':    [ [ s:black,       s:tab_bg ] ],
  \     'tabsel':    [ [ s:white,       s:tab_active_bg, s:bold ] ],
  \     'bufsel':    [ [ s:tab_color,   s:visual_grey ] ],
  \     'tabsep':    [ [ s:white,       s:cursor_grey ] ],
  \   }
  \ })

