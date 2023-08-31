include <import/smow_lib.scad>

height = 20;
width = 190;
depth = 14;

cut_depth = 12;
cut_height = 3;
trim_depth = depth-2;
support_size = 9;

difference() {
	cube([width, depth, height]);
	translate([0, 0, height-cut_height]) cube([width, cut_depth, cut_height]);
	rotate([0, 0, 180]) translate([-width, -trim_depth, support_size]) triangle(width, trim_depth, support_size);
	cube([width, cut_depth, support_size]);
}
