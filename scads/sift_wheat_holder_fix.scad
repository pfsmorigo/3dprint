$fn = $preview ? 64 : 256;

x = 12;
y = 28;
z = 6;

base_x = x-(3*2);
base_y = 11;

difference() {
	cube([x, y, z], center=true);
	translate([0, -(y/2-base_y/2), 0]) cube([base_x, base_y, z+1], center=true);
}
