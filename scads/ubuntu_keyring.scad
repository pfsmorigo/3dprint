$fn = $preview ? 32 : 64;
x = 35;
y = x * 1.54;
z = x * 0.07;
space = x * 0.25;
pin_size = x * 0.12;
pin_border = x * 0.05;

difference() {
	translate([0, y/2 - x/2, 0]) {
		cube([x, y, z], true);
		translate([0, y/2, 0])
			cylinder(z, pin_size, pin_size, true);
	}
	translate([0, y - x/2, 0])
		cylinder(z + 1, pin_size - pin_border, pin_size - pin_border, true);
	linear_extrude(z + 1, center = true)
		resize([x - space, x - space])
			import("ubuntu_keyring.svg", center = true);
}
