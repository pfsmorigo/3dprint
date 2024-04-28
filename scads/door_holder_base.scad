$fn = $preview ? 64 : 256;

width = 58;
holder = 1;
base_width = 35;
base_heght = 3;

translate([base_width/2-holder/2, 0, 0]) cube([base_width, width, base_heght], center=true);

translate([0, 0, -base_heght/2]) difference() {
	rotate([0, 90, 0]) cylinder(holder, d=width, center=true);
	translate([-holder/2, -width/2, -width/2]) cube([holder, width, width/2]);
}
