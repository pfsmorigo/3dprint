include <import/smow_lib.scad>

$fn= $preview ? 32 : 64;

sph=17.5;

pin_x=4;
pin_y=40;
pin_z=10;

holder=2;
holder_space=17;

rotate([0,-90,0]) {
	translate([0,pin_y,0]) difference() {
		sphere(d=sph);
		translate([-sph/4,0,0]) cube([sph/2,sph,sph], center=true);
	}

	translate([0,0,-pin_z/2]) {
		cube([pin_x,pin_y,pin_z]);
		cube([pin_x+holder,holder,pin_z]);
		translate([0,holder_space+holder,0]) cube([pin_x+holder,holder,pin_z]);
	}
}
