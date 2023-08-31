include <import/smow_lib.scad>

height = 4;
width = 80;
depth = 22;

cut_depth = 12;
cut_height = 2;

trim_depth = 6;

difference() {
	cube([width, depth, height]);
	#translate([0, 0, height-cut_height]) cube([width, cut_depth, cut_height]);
	translate([0, depth-trim_depth, 0]) triangle(width, trim_depth, height);
}
