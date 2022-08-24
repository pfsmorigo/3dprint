$fn= $preview ? 32 : 64;

width = 10;
space_lateral = 2;
space = 18;
slots = 6;

pin_x = 2;
pin_y = 34.5;
pin_z = 9;

side_x = width + space/2;
side_y = 2;
side_z = pin_z + 4;

base_x = width;
base_y = pin_y + space_lateral*2 + side_y*2;
base_z = 2;

for ( i = [0 : slots - 1] ){
	translate([i*space, 0, 0]) {
		translate([base_x/2-pin_x/2, 0, 0]) cube([base_x, base_y, base_z], center=true);
		translate([0, 0, pin_z/2 + base_z/2]) {
			difference() {
				cube([pin_x, pin_y, pin_z], center=true);
				translate([0,0,pin_z/2]) rotate([0,90,0]) scale([0.5,1]) cylinder(width, 14, 14, center=true);
			}
			for (i = [-1, 1]) {
				translate([0, (pin_y/2 + side_y/2 + space_lateral) * i, 0]) cube([side_x, side_y, side_z], center=true);
			}
		}
	}
}


blade_x = 7;
blade_y = base_y;
blade_z = side_z;
distance = 20;

translate([-9.5-blade_x/2-distance,0,pin_z/2+base_z/2]) {
	difference() {
		cube([blade_x, blade_y, blade_z], center=true);
		cube([blade_x-(side_y*2), blade_y-(side_y*2), blade_z], center=true);
		translate([2,0,1]) cube([blade_x, 23, blade_z - base_z], center=true);
	}
	for (i = [-1, 1]) {
		translate([distance-8, (pin_y/2 + side_y/2 + space_lateral) * i, 0]) cube([side_x+12, side_y, side_z], center=true);
	}
}

