include <BOSL/constants.scad>
use <BOSL/masks.scad>

$fn = $preview ? 64 : 256;

height=5;
hole=40.56;
size=hole+10;

pins=6;
pin_l=5;
pin_w=10;

holder_l=50;
holder_w=20;

difference() {
	union() {
		cylinder_mask(l=height, r=size/2, fillet1=height/5, fillet2=height/5)
			cylinder(h=height, d=size, center=true);
		translate([holder_l/2, 0, 0]) resize([holder_l*2, holder_w])
			cylinder_mask(l=height, r=holder_w, fillet1=height/5, fillet2=height/5)
				cylinder(height, holder_w, holder_w, center=true);
	}
	cylinder(h=height+1, d=hole, center=true);
	for(i=[1:1:pins]) {
		rotate([0, 0, (360/pins)*i]) translate([hole/2, 0])
			cube([pin_l, pin_w, height+1], center=true);
	}
}
