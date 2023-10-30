include <BOSL/constants.scad>
use <BOSL/masks.scad>

$fn = $preview ? 64 : 256;

height=4;
hole=23.8;
size=hole+5;

pins=60;
pin=0.85;

holder_l=15;
holder_w=10;
holder_h=4;

difference() {
	union() {
		cylinder_mask(l=height, r=size/2, fillet1=height/3, fillet2=height/3)
			cylinder(h=height, d=size, center=true);
		translate([holder_l/2, 0, (holder_h-height)/2]) resize([holder_l*2, holder_w])
			cylinder_mask(l=holder_h, r=holder_w, fillet1=height/3, fillet2=height/3)
				cylinder(holder_h, holder_w, holder_w, center=true);
	}
	cylinder(h=height+1, d=hole, center=true);
	for(i=[1:1:pins]) {
		rotate([0, 0, (360/pins)*i]) translate([(hole/2), 0, 0.5]) {
			rotate([0, 0, 45]) cube([pin, pin, height], center=true);
		}
	}
}
