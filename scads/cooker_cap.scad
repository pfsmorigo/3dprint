$fn = $preview ? 64 : 256;

hole = 37;
border = 3;
base_height = 15;

module rounded_square(width, radius_corner) {
	translate([radius_corner-width/2, radius_corner-width/2, 0]) minkowski() {
		square(width - 2 * radius_corner);
		circle(radius_corner);
	}
}

linear_extrude(base_height) difference() {
	union() {
		rounded_square(hole+border, (hole+border)/2.5);
		square((hole+border)/2);
	}
	union() {
		rounded_square(hole, hole/2.5);
		square((hole)/2);
		translate([hole/4+border, hole/4+border, 0]) square((hole)/4);
	}
}
