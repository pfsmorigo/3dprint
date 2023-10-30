$fn = $preview ? 32 : 64;
x = 35;
y = x * 1.54;
z = 2.5;
pin_size = x * 0.115;
pin_border = x * 0.04;
pin_scale = 1.0;
pin_shift = - x * 0.00;

difference() {
	union() {
		// Pin holder at the top
		translate([0, y/2 + pin_shift, 0])
			scale([pin_scale, 1, 1]) cylinder(z, pin_size, pin_size, true);

		// Import SVG
		linear_extrude(z, center = true) resize([x, y])
			import("import/ubuntu_cof_tag.svg", center = true);
	}
	// Pin holder hole
	translate([0, y/2 + pin_shift, 0])
		scale([pin_scale, 1, 1]) cylinder(z + 2, pin_size - pin_border, pin_size - pin_border, true);
}
