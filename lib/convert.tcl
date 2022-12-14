##############################################################################
#
# convert.tcl - Module to handle conversion between Absolute and
#               Relative modes
#
# Copyright (C) 2020 Donald Rozenberg
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

# This module will convert a project file from absolute spacing to
# relative spacing and vice versa.

# vTcl:get_mode
# vTcl:convert_widget

proc vTcl:convert_project {} {
    global vTcl
    set top "$vTcl(real_top)"
    vTcl:remove_multi_selections
    vTcl:destroy_handles
    set tree  [vTcl:widget_tree $top 0]
    incr vTcl(change)
    set vmode [expr {$vTcl(mode) eq "Relative" ? "Absolute" : "Relative"}]
    set mode [expr {$vTcl(mode) eq "Relative" ? 0 : 1}]
    if {[llength $tree] == 0} {
        set vTcl(mode) $vmode
        set vTcl(actual_relative_placement) $mode
        return
    }
    foreach i $tree {
        #if {[string first "vTH_" $i] > -1} { destroy $i; update }
        vTcl:convert_widget $i
    }
    # Invert the design_mode.
    set vTcl(mode) $vmode
    set vTcl(actual_relative_placement) $mode
    #catch {[after 25 return]}
}

proc vTcl:convert_widget {target {creation 0} } {
    global vTcl
    update
    set class [vTcl:get_class $target]
    if {$class eq "Toplevel"} { return }
    if {$class eq "TSizegrip"} { return }
    if {$class eq "Scrollbar"} { return }
    if {$class eq "Treeview"} { return }
    if {$class eq "Menu"} { return }
    if {$class eq "Popupmenu"} { return }
    # if {[info exists ::widgets::${target}::locked]} {
    #     if {[set ::widgets::${target}::locked] == 1} {
    #         return
    #     }
    # }
#     set conf [place configure $target]
# dpr conf
#     if {[llength $conf] == 0} { return }
#     # Get the place option value array.
#     foreach c $conf {
#         foreach {opt q q q val} $c {}
#         #set var [string range $opt 1 end]
#         set value($opt) $val
#     }
# Stuff here is bogus because some widgets have sizes in characters!
#     set hh ""
#     catch {set hh [$target cget -height]}
#     if {$hh != ""} {set value(-height) $hh}
#     set ww ""
#     catch {set ww [$target cget -width]}
#     if {$ww != ""} {set value(-width) $ww}
    # dpr hh ww
    # if {$creation} {
    #     set value(-height) $vTcl(w,height)
    #     set vTclalue(-width) $vTcl(w,width)
    # }
    # The whole business with saving the mode in
    # ::widgets::${target}::mode is to work properly for new widgets
    # to be placed at (0,0). For old projects before the widget mode
    # was so stored we use value(-x) to determine widget mode. Of
    # course, that will be wrong if the widget is at (0,0).
    # if {[info exists ::widgets::${target}::mode]} {
    #     set t_mode [set ::widgets::${target}::mode]
    # } else {
    #     set t_mode [expr {$vTcl(mode) == 0 ? "Relative" : "Absolute"}]
    # }
    set t_mode [vTcl:get_mode $target]
    # Get the geometry of the parent.
    #set parent_geometry [winfo geometry $value(-in)]
    set parent [winfo parent $target]
    foreach {w h x y} [split [winfo geometry  $target] "x+"] {}
    # foreach {W H X Y} [split [winfo geometry  $value(-in)] "x+"] {}
    foreach {W H X Y} [split [winfo geometry  $parent] "x+"] {}
    if {$t_mode eq "Relative"} {
#dmsg    Relative -> Absolute
        # Doing Relative -> Absolute
        # set abs_x [expr {$W * $value(-relx)}]
        # set abs_x [expr {round($abs_x)}]
        # set abs_y [expr {$H * $value(-rely)}]
        # set abs_y [expr {round($abs_y)}]
        # if {[catch {
        #     set abs_w [expr {$W * $value(-relwidth)}]
        #     set abs_w [expr {round($abs_w)}]
        #     set w_clause#  [list "-width" "$abs_w" "-relwidth" "0.0"]
        #     if {$abs_w == 0} { set w_clause "" }
        # } result]} {
        #     set w_clause ""
        # }
        # if {[catch {
        #     set abs_h [expr {$H * $value(-relheight)}]
        #     set abs_h [expr {round($abs_h)}]
        #     set h_clause [list "-height" "$abs_h" "-relheight" "0.0"]
        #     if {$abs_h == 0} { set h_clause "" }
        # } result]} {
        #     set h_clause ""
        # }
        # if {$class eq "Scale"} {
        #     set w_clause ""
        #     set h_clause ""
        # }
        # if {$class in {Button TButton Entry Tentry}} { ;# This if is a trial.
        #     set w $value(-width)
        #     set h $value(-height)
        #     set w_clause ""
        #     set h_clause ""
        #     if {$w ne ""} {
        #         set w_clause [list "-width" "$value(-width)" "-relwidth" "0"]
        #     }
        #     if {$h ne ""} {
        #         set h_clause [list "-height" "$value(-height)" "-relheight" "0"]
        #     }
        # }
        # place configure $target -x $abs_x -relx 0.0 -y $abs_y -rely 0.0 \
        #                                      {*}$w_clause {*}$h_clause



#         set w_clause ""
#         set h_clause ""
#         if {$w > 0} {set w_clause  [list "-width" "$w" "-relwidth" "0.0"]}
#         if {$h > 0} {set h_clause [list "-height" "$h" "-relheight" "0.0"]}
#         if {$class in {Button TButton Entry Tentry}} {
#             set w_clause ""
#             set h_clause ""
#             if {$w ne ""} {
#                 set w_clause [list "-width" "$w" "-relwidth" "0.0"]
#             }
#             if {$h ne ""} {
#                 set h_clause [list "-height" "$h" "-relheight" "0.0"]
#             }
#         }
# dpr w_clause h_clause
# dmsg conf cmd:   place configure $target -x $x -relx 0.0 -y $y -rely 0.0  \
#                          {*}$w_clause {*}$h_clause

        set w_clause [list "-width" "$w" "-relwidth" "0.0"]
        set h_clause [list "-height" "$h" "-relheight" "0.0"]
        place configure $target -x $x -relx 0.0 -y $y -rely 0.0  \
                         {*}$w_clause {*}$h_clause
        set ::widgets::${target}::mode "Absolute"
    } else {
        # Doing Absolute -> Relative
#dmsg  Absolute -> Relative
        # set rel_x [expr $value(-x) / $W.0]
        set rel_x [expr $x / $W.0]
        set rel_x [expr {round($rel_x*1000)/1000.0}]
        # set rel_y [expr $value(-y) / $H.0]
        set rel_y [expr $y / $H.0]
        set rel_y [expr {round($rel_y*1000)/1000.0}]
        if {[catch {
            # set rel_w [expr $value(-width) / $W.0]
            set rel_w [expr $w / $W.0]
            set rel_w [expr {round($rel_w*1000)/1000.0}]
            set w_clause [list "-width" "0" "-relwidth" "$rel_w"]
            if {$rel_w == 0.0} { set w_clause "" }
        } result]} {
            set w_clause ""
        }
        if {[catch {
            # set rel_h [expr $value(-height) / $H.0]
            set rel_h [expr $h / $H.0]
            set rel_h [expr {round($rel_h*1000)/1000.0}]
            set h_clause [list "-height" "0" "-relheight" "$rel_h"]
            if {$rel_h == 0.0} { set h_clause "" }
        } result]} {
            set h_clause ""
        }
        # if {$class eq "Scale"} {
        #     set w_clause ""
        #     set h_clause ""
        # }
        if {$class eq "TSeparator"} {
        }
        if {$class in {Button TButton Entry Tentry}} {
            #set w $value(-width) 
            #set h $value(-height)
            set w_clause ""
            set h_clause ""
            if {$w ne ""} {
                set w_clause [list "-width" "$w" "-relwidth" "0.0"]
            }
            if {$h ne ""} {
                set h_clause [list "-height" "$h" "-relheight" "0.0"]
            }
        }
        place configure $target -x 0 -relx $rel_x -y 0 -rely $rel_y \
            {*}$w_clause {*}$h_clause
        #set vTcl(mode) "Relative"
        set ::widgets::${target}::mode "Relative"
    }
    update
    if {$class eq "Treeview"} {
        catch {[after 25 return]}
    }
}

proc vTcl:get_mode {target} {
    # Return the design mode of target.
    global vTcl
    if {[info exists ::widgets::${target}::mode]} {
        return [set ::widgets::${target}::mode]
    }
    set x [place configure $target -x]
    set x [lrange $x end end]
    set y [place configure $target -y]
    set y [lrange $y end end]
    if {$x == 0 && $y == 0} {
        return "Relative"
    } else {
        return "Absolute"
    }
}

proc vTcl:conform_widget_mode {target} {
    # Run thru widget tree starting at the target and determine if the
    # mode is the same as the design mode and if not convert the
    # widget.
    global vTcl
    set tree [vTcl:widget_tree $target 1]
    foreach i $tree {
        set class [vTcl:get_class $i]
        if {$class eq "Toplevel"} { return }
        if {[info exists ::widgets::${target}::mode]} {
            set t_mode [set ::widgets::${target}::mode]
        } else {
            set x [place configure $i -x]
            set x [lrange $x end end]
            set t_mode [expr {$x == 0 ? "Relative" : "Absolute"}]
        }
        if {$t_mode ne $vTcl(mode)} {
            vTcl:convert_widget $target
        }
    }
}

proc vTcl:initial_design_mode {} {
    # Called when a project is loaded to be sure all the design mode
    # of all widgets agree with the project mode. When the project was
    # stored all widgets were set vTcl(mode) and so it was not
    # necessary to store modes for individual widgets. After loading
    # the widgets do need a design mode.
    global vTcl
foreach top $vTcl(tops) {
    set top [lrange $vTcl(tops) 0 0]   ;# Actually there is only one!
    set tree [vTcl:widget_tree $top 1]
    foreach i $tree {
        set class [vTcl:get_class $i]
        if {$class eq "Toplevel"} { continue }
        namespace eval ::widgets::${i} {
            # Create the variable so that I can store the widget mode.
            variable mode
        }
        set ::widgets::${i}::mode $vTcl(mode)
    }
}
}

proc vTcl:at_0_0 {target} {
    set x [place configure $target -x]
    set x [lrange $x end end]
    set y [place configure $target -y]
    set y [lrange $y end end]
    set relx [place configure $target -relx]
    set relx [lrange $relx end end]
    set rely [place configure $target -rely]
    set rely [lrange $rely end end]
    if {$x == 0 && $y == 0 && $relx == 0.0 && $rely == 0.0} {
        # We are at (0,0)
        set ret 1
    } else {
        set ret 0
    }
    return $ret
}

proc vTcl:apply_size {target} {
    # We come here when the user plops a widget at (0,0). This
    # function see if the target has height or width options
    # specified. If so, it uses those values to generate appropriate
    # values for relative height and width.

    # Get the geometry of the parent.
    set parent [winfo parent $target]
    set parent_geometry [winfo geometry $parent]
    foreach {W H X Y} [split $parent_geometry "x+"] {}
    catch {set hh [$target cget -height]}
    catch {set ww [$target cget -width]}
    if {[catch {
        set rel_w [expr $ww / $W.0]
        set rel_w [expr {round($rel_w*1000)/1000.0}]
        set w_clause [list "-width" "0" "-relwidth" "$rel_w"]
        if {$rel_w == 0.0} { set w_clause "" }
    } result]} {
        set w_clause ""
    }
    if {[catch {
        set rel_h [expr $hh / $H.0]
        set rel_h [expr {round($rel_h*1000)/1000.0}]
        set h_clause [list "-height" "0" "-relheight" "$rel_h"]
        if {$rel_h == 0.0} { set h_clause "" }
    } result]} {
        set h_clause ""
    }
    place configure $target  {*}$w_clause {*}$h_clause
    update
    set ::widgets::${target}::mode "Absolute"
}

proc vTcl:convert_for_geom_option {target option} {
    # When attempting to change a geometric option the design mode of
    # the target must be Absolute for absolute options and Relative
    # for relative options.
    set t_mode [vTcl:get_mode $target]
    if {$option in "-x -y -width -height"} {
        if {$t_mode ne "Absolute"} {
            vTcl:convert_widget $target
        }
    }
    if {$option in "-relx -rely -relwidth -relheight"} {
        if {$t_mode ne "Relative"} {
            vTcl:convert_widget $target
        }
    }
}
