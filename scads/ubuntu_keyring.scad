$fn = $preview ? 32 : 64;
x = 35;
z = x * 0.07;
space = x * 0.25;
pin_size = x * 0.12;
pin_border = x * 0.05;

difference() {
	union() {
		translate([0, x/2, 0]) cylinder(z, pin_size, pin_size, true);
		cylinder(z, x/2, x/2, true);
	}

    // This translate was done manually in order to set the log centered
	translate([-x/34, 0, 0])
		linear_extrude(z + 1, center = true)
		resize([x - space, x - space])
		import("import/ubuntu_cof.svg", center = true);
	translate([0, x/2, 0])
		cylinder(z + 2, pin_size - pin_border, pin_size - pin_border, true);
}
