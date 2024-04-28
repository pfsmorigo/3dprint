$fn = $preview ? 64 : 256;

hole_base_width = 34;
hole_base_height = 5;

hole_top_width = 30.5;
hole_top_height = 11;

base_height = 2;

width = 40;
height = base_height + hole_base_height + hole_top_height;

extra_base_width = width-33;
extra_top_width = (hole_base_width-hole_top_width)+extra_base_width;

difference() {
	union() {
		cylinder(height, d=width);
		translate([0, width/2, height/2]) cube([width, width, height], true);
	}
	translate([0, 0, base_height]) {
		cylinder(hole_base_height, d=hole_base_width);
		translate([0, hole_base_width/2+extra_base_width/2, hole_base_height/2])
			cube([hole_base_width, hole_base_width+extra_base_width, hole_base_height], true);

		translate([0, 0, hole_base_height])
			cylinder(hole_top_height, d=hole_top_width);
		translate([0, hole_top_width/2+extra_top_width/2, hole_base_height+hole_top_height/2])
			cube([hole_top_width, hole_top_width+extra_top_width, hole_top_height], true);
	}
}
