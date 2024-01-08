$fn = $preview ? 64 : 256;

height = 6;
width = 40;

square_width = 18.5;
square_height = 1.5;

middle_hole = 10;

screw_hole = 6;
screw_hole_head = 10;
screw_hole_head_height = 1;
screw_hole_distance = 7;

round_size = 1;

difference() {
	minkowski() {
		cube([width-round_size*2, width-round_size*2, height-round_size*2], true);
		sphere(round_size);
	}
	rotate([0, 0, 45])
		translate([0, 0, square_height/2-height/2])
			cube([square_width, square_width, square_height], true);
	cylinder(height+1, d=middle_hole, center=true);
	for (i = [-1, 1]) translate([(screw_hole_distance+screw_hole/2)*i, (screw_hole_distance+screw_hole/2)*i, 0]) {
		cylinder(height, d=screw_hole, center=true);
		translate([0, 0, height/2-screw_hole_head_height/2]) cylinder(screw_hole_head_height, d=screw_hole_head, center=true);
	}
}
