height = 5;
width = 120;
corner = 20;

cut_depth = 12;
cut_height = 3;
depth = cut_depth + corner;

difference() {
	cube([width + corner, depth, height]);
	translate([corner, 0, 0]) {
		translate([0, 0, height - cut_height]) cube([width, cut_depth, height]);
		cube([30, cut_depth, height + 10]);
		translate([72, 0, 0]) cube([53, cut_depth, height + 10]);
	}
}
