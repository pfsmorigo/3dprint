$fn = $preview ? 64 : 256;

x = 100;
y = x;
z = 1;
border = 15;

difference() {
	cube([x, y, z], true);
	cube([x-border, y-border, z+1], true);
}
