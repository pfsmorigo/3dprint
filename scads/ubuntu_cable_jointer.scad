$fn = $preview ? 32 : 64;

width = 5;
height = 10;
hole = 2;
cut_size = width/5;

rotate([90,0,0]) difference() {
	cylinder(height, width/2, width/2, true);
	cylinder(height + 1, hole/2, hole/2, true);
	for (i = [-1, 1]) {
		translate([0, (width/2 - cut_size/2) * i, 0]) cube([width, cut_size, height + 1], true);
	}
}
