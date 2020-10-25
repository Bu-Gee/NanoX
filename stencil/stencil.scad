//linear_extrude(height = 2, center = true, convexity = 10)
//    hull() import (file = "NanoX-F_Paste.svg", center = true);

board_thickness = 1.6;
stencil_thickness = 0.24;

difference() {
    translate([0, 0, 0]) cube([80,24,board_thickness + stencil_thickness], center = true);
    
    translate([0,0,(stencil_thickness/-2)-0.001])
        linear_extrude(height = board_thickness, center = true, convexity = 10)
           offset(delta = 0.2) hull() import (file = "NanoX-F_Paste.svg", center = true);

    linear_extrude(height = 2, center = true, convexity = 10)
       import (file = "NanoX-F_Paste.svg", center = true);
}
