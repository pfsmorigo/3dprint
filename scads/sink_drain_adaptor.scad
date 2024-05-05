include <BOSL2/std.scad>
include <BOSL2/threading.scad>

$fn = $preview ? 64 : 256;
height = 60;
width = 50;

threaded_width = 31.4;
threaded_height = 10;

hole = 38;

/*difference() {*/
	/*threaded_rod(d=width+2, height=height, pitch=1.9, $fa=1, $fs=1);*/
	/*#cylinder(height+20, d=width-thickness, center=true);*/
/*}*/

difference() {
	union() {
		cylinder(height, d=width, center=true);
		translate([0, width/4, 0]) rotate([90, 0, 0]) cylinder(width/2, d=width, center=true);
	}
	translate([0, 0, threaded_height]) cylinder(height, d=hole, center=true);
	translate([0, width/4, 0]) rotate([90, 0, 0]) cylinder(width/2, d=hole, center=true);
	translate([0, 0, threaded_height/2-height/2])
		threaded_rod(d=threaded_width, height=threaded_height, pitch=1.9, $fa=1, $fs=1, left_handed=true);
}

/*translate([0, 0, 30]) cylinder(height+40, d=width+space, center=true);*/
/*translate([0, 0, height]) cylinder(height+20, d=width+space, center=true);*/
