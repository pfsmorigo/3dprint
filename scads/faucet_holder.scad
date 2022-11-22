include <BOSL/constants.scad>
use <BOSL/masks.scad>

$fn = $preview ? 64 : 256;

height=12;
hole=40.56;
size=hole+15;

pins=6;
pin_l=5;
pin_w=10;

holder_l=40;
holder_w=30;
holder_h=8;

difference() {
	union() {
		cylinder_mask(l=height, r=size/2, fillet1=height/5, fillet2=height/5)
			cylinder(h=height, d=size, center=true);
		translate([holder_l/2, 0, (holder_h-height)/2]) resize([holder_l*2, holder_w])
			cylinder_mask(l=holder_h, r=holder_w, fillet1=height/5, fillet2=height/5)
				cylinder(holder_h, holder_w, holder_w, center=true);
	}
	cylinder(h=height+1, d=hole, center=true);
	for(i=[1:1:pins]) {
		rotate([0, 0, (360/pins)*i]) translate([hole/2, 0, height/10]) {
			cube([pin_l, pin_w, height], center=true);
		}
	}
}
