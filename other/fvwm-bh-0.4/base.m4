m4_dnl The following message is supposed to deter editing the base.fvwm file:
# This file generated by m4 - do not edit - see base.m4 instead
m4_divert(-1)
m4_include(include.m4)m4_dnl Sets quotes to {,}

m4_define({IMAGEPATH},$HOME/.fvwm/icons)
m4_define({IMAGEPATH},IMAGEPATH:$HOME/.fvwm/icons/mini)
m4_define({IMAGEPATH},IMAGEPATH:$HOME/.fvwm/images)
m4_define({IMAGEPATH},IMAGEPATH:$HOME/.fvwm/images/icons)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/fvwm)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/hicolor/48x48/apps;.png)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/gnome/48x48/apps;.png)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/gnome/48x48/filesystems;.png)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/gnome/48x48/devices;.png)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/HighContrastLargePrint/48x48/apps;.png)
m4_define({IMAGEPATH},IMAGEPATH:/usr/include/X11/pixmaps/)
m4_define({IMAGEPATH},IMAGEPATH:/usr/include/X11/bitmaps)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/icons/mini)
m4_define({IMAGEPATH},IMAGEPATH:/usr/share/pixmaps)
m4_define({IMAGEPATH},IMAGEPATH:/usr/local/share/icons)
m4_define({IMAGEPATH},IMAGEPATH:/usr/local/share/icons/mini)

m4_include(apps.m4)
m4_dnl Allow hostname-specific user values to override the default settings:
m4_errprint(importing SYSTEMNAME/SYSTEMNAME.m4
)
m4_divert(0)m4_dnl

m4_errprint({SYSTEMNAME=}SYSTEMNAME
)
m4_include(SYSTEMNAME/SYSTEMNAME.m4)
m4_divert(-1)

m4_errprint({APPSPANEL=}APPSPANEL
)
m4_errprint({MAIN_MENU}=MAIN_MENU
)
m4_dnl Allow hostname-independant user values to override the default settings:

m4_include(globals.m4)

m4_errprint({SYSTEMNAME=}SYSTEMNAME
)

m4_errprint({THEME=}THEME
)

m4_include(fonts-colours.m4)

m4_divert(0)m4_dnl
Exec sh -c "(echo -n 'Restarting fvwm at '; date) >&2"
Echo Geom is $[vp.width]x$[vp.height]
ImagePath IMAGEPATH

#EdgeResistance 500 10
EdgeResistance 10000 50
EdgeScroll 100 100
ClickTime 150
SnapAttraction 8 SameType
SnapGrid 8
OpaqueMoveSize 100
DefaultFont     DEFAULTFONT

DeskTopSize 3x2

ColormapFocus FollowsMouse

m4_include(styles.m4)
m4_include(funcs.m4)

m4_ifdef({BUTTONBAR},{m4_include(buttons.m4)})
m4_include(modules.m4)
m4_include(keys.m4)
m4_include(mouse.m4)

Function BaseDecor
Read SYSTEMNAME/decor.fvwm
m4_include(menus.m4)
m4_ifdef({TASKBAR},{m4_include(taskbar.m4)})
