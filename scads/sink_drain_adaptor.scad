include <BOSL2/std.scad>
include <BOSL2/threading.scad>

$fn = $preview ? 64 : 256;
height = 10;
width = 28;
thickness = 5;

difference() {
	threaded_rod(d=width+2, height=height, pitch=1.9, $fa=1, $fs=1);
	cylinder(height, d=width-thickness, center=true);
}

/*translate([0, 0, height]) cylinder(height+20, d=width, center=true);*/
