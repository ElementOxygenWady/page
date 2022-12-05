#############################################################################
# Generated by PAGE version 7bb
#  in conjunction with Tcl version 8.6
#  Nov 20, 2021 07:50:48 PM PST  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set desc "-family {DejaVu Sans Mono} -size 14"
set vTcl(actual_gui_font_dft_desc) $desc
set vTcl(actual_gui_font_dft_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 14"
set vTcl(actual_gui_font_text_desc) $desc
set vTcl(actual_gui_font_text_name) [font create {*}$desc]
set desc "-family {DejaVu Sans Mono} -size 14"
set vTcl(actual_gui_font_fixed_desc) $desc
set vTcl(actual_gui_font_fixed_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 12"
set vTcl(actual_gui_font_menu_desc) $desc
set vTcl(actual_gui_font_menu_name) [font create {*}$desc]
set vTcl(actual_gui_font_tooltip_desc)  TkTooltipFont
set vTcl(actual_gui_font_tooltip_name)  TkTooltipFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) wheat
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #f4bcb2
set vTcl(actual_gui_menu_analog) #85d845
set vTcl(actual_gui_menu_bg) wheat
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #b2c9f4
set vTcl(analog_color_p) #eaf4b2
set vTcl(analog_color_m) #f4bcb2
set vTcl(active_fg) #111111
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}



    ttk::style configure Popupmenu -background $vTcl(actual_gui_bg)
    ttk::style configure Popupmenu -foreground $vTcl(actual_gui_fg)
    ttk::style configure Popupmenu -font "$vTcl(actual_gui_font_dft_desc)"
    vTcl::widgets::core::popup::createCmd .pop39 \
        -activebackground #ffffcd -activeforeground black -background #dda0dd \
        -disabledforeground #b8a786 -foreground black -tearoff 1 
    global vTcl
    set val vTcl(.pop39,-proc)
    set vTcl(.pop39,-proc) popup1
    namespace eval ::widgets::.pop39 {}
    set ::widgets::.pop39::ClassOption(-proc) popup1
    set ::widgets::.pop39::options(-proc) popup1
    set ::widgets::.pop39::save(-proc) 1
    vTcl:DefineAlias ".pop39" "Popup1" vTcl:WidgetProc "" 1
    .pop39 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background $vTcl(actual_gui_bg) \
        -command this \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label This 
    .pop39 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background $vTcl(actual_gui_bg) \
        -command that \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label That 
    .pop39 add separator \
        -background $vTcl(actual_gui_bg) 
    .pop39 add cascade \
        -menu .pop39.men40 -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #111111 -background $vTcl(actual_gui_bg) \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label Also 
    set site_2_0 "."
    menu .pop39.men40 \
        -activebackground #ffffcd -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground black -tearoff 0 
    .pop39.men40 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background $vTcl(actual_gui_bg) \
        -command then \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label Then 
    .pop39.men40 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background $vTcl(actual_gui_bg) \
        -command there \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label There 
    vTcl::widgets::core::popup::createCmd .pop36 \
        -activebackground #ffffcd -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #b8a786 \
        -foreground black -tearoff 1 
    global vTcl
    set val vTcl(.pop36,-proc)
    set vTcl(.pop36,-proc) popup2
    namespace eval ::widgets::.pop36 {}
    set ::widgets::.pop36::ClassOption(-proc) popup2
    set ::widgets::.pop36::options(-proc) popup2
    set ::widgets::.pop36::save(-proc) 1
    vTcl:DefineAlias ".pop36" "Popup2" vTcl:WidgetProc "" 1
    .pop36 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background plum -command how \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label How 
    .pop36 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background plum -command now \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label Now 
    .pop36 add separator \
        -background plum 
    .pop36 add cascade \
        -menu .pop36.men37 -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #111111 -background plum \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label BrownCow 
    set site_2_0 "."
    menu .pop36.men37 \
        -activebackground #ffffcd -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground black -tearoff 0 
    .pop36.men37 add command \
        -activebackground $vTcl(actual_gui_menu_analog) \
        -activeforeground #000000 -background plum -command moo \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_menu_fg) -label Moo 

proc vTclWindow.top36 {base} {
    global vTcl
    if {$base == ""} {
        set base .top36
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m44" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x450+751+195
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1170
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "New Toplevel 1"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    button $top.but37 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Button1 
    vTcl:DefineAlias "$top.but37" "Button1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.but37 <Button-3> {
        lambda e: popup1(e)
    }
    button $top.but38 \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Button2 
    vTcl:DefineAlias "$top.but38" "Button2" vTcl:WidgetProc "Toplevel1" 1
    bind $top.but38 <Button-3> {
        lambda e: popup2(e)
    }
    menu $top.m44 \
        -activebackground #d8d8d8 -activeforeground #000000 \
        -background $vTcl(actual_gui_menu_bg) \
        -font $vTcl(actual_gui_font_menu_desc) \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    $top.m44 add command \
        -command {#quit} -label Quit 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but37 \
        -in $top -x 140 -y 170 -anchor nw -bordermode ignore 
    place $top.but38 \
        -in $top -x 410 -y 170 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top36 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

