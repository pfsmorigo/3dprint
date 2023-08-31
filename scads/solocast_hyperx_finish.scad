$fn = $preview ? 64 : 256;

height = 8;
width = 20;
thickness = 1;
base_width = 7;
base_height = 1;

difference() {
	union() {
		cylinder(height, d=width+thickness, center=true);
		translate([0, 0, -height/2+base_height/2]) cylinder(base_height, d=width+base_width, center=true);
	}
	cylinder(height, d=width, center=true);
}
