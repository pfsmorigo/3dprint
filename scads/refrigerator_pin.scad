$fn = $preview ? 64 : 256;

small = 10;
small_height = 10;
big = 14;
big_height = 10;

thickness = 2;

difference() {
	union() {
		cylinder(big_height, d=big, center=true);
		translate([0, 0, small_height]) cylinder(small_height, d=small, center=true);
	}
		translate([0, 0, -thickness]) cylinder(big_height-thickness, d=big-thickness, center=true);
		translate([0, 0, small_height]) cylinder(small_height, d=small-thickness, center=true);
}
