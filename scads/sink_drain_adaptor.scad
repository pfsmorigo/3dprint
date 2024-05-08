$fn = $preview ? 64 : 256;

big_hole = 38;
thickness = 5;

top_width = 70;
top_height = (big_hole+thickness)/2;

middle_height = 10;

base_height = 10;
base_low_width = 28;
base_low_height = 2;
base_hole = 19;
base_width = base_hole+thickness;

translate([0, 0, base_height/2+middle_height+(big_hole+thickness)/2]) {
	difference() {
		union() {
			translate([0, 0, -top_height/2])
				cylinder(top_height, d=big_hole+thickness, center=true);
			rotate([90, 0, 0]) cylinder(top_width, d=big_hole+thickness, center=true);
		}
		translate([0, 0, -top_height/2]) cylinder(top_height, d=big_hole, center=true);
		rotate([90, 0, 0]) cylinder(top_width, d=big_hole, center=true);
	}
}

translate([0, 0, middle_height/2+base_height/2]) difference() {
	cylinder(middle_height, d1=base_width, d2=big_hole+thickness, center=true);
	cylinder(middle_height, d1=base_width-thickness, d2=big_hole, center=true);
}

difference() {
	union() {
		cylinder(base_height, d=base_width, center=true);
		translate([0, 0, base_low_height/2-base_height/2])
			cylinder(base_low_height, d=base_low_width, center=true);
	}
	cylinder(base_height, d=base_hole, center=true);
}
