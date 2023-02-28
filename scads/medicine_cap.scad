$fn = $preview ? 64 : 256;

height = 8;
width = 22.5;
base_height = 1;
base_width = width+3;

hole = 5.5;

rotate([0, 180, 0]) difference() {
	union() {
		cylinder(height, d1=width, d2=width-1, center=true);
		translate([0, 0, -height/2+base_height/2]) cylinder(base_height, d=base_width, center=true);
	}
	cylinder(height+1, d1=hole, d2=hole-2, center=true);
}
