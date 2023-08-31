$fn = $preview ? 64 : 256;

CABLE_WIDTH = 5.5;

width = 50;
depth = 20;
thickness = 2.5;
thickness_wire = 1.5;

difference() {
	union() {
		cube([width, depth, thickness]);
		translate([0, 0, CABLE_WIDTH/2]) rotate([0, 90, 0]) cylinder(width, d=CABLE_WIDTH+thickness_wire*2);
		translate([0, -(CABLE_WIDTH/2+thickness_wire), 0]) cube([width, CABLE_WIDTH+thickness_wire*2, CABLE_WIDTH/2]);
	}

	translate([0, 0, CABLE_WIDTH/2]) rotate([0, 90, 0]) cylinder(width+1, d=CABLE_WIDTH);
	translate([0, -CABLE_WIDTH/2, 0]) cube([width+1, CABLE_WIDTH, CABLE_WIDTH/2]);
	translate([0, -CABLE_WIDTH, -thickness]) cube([width+1, depth, thickness]);
}
