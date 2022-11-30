conn_width = 12;
conn_height = 4.5;
conn_length = 16;
corner = 0.5;
base = 1;
diff = 0.5;

hole_width = conn_width - 3;
hole_height = conn_height/2 + 0.5;

difference() {
	cube([conn_width + corner, conn_height + corner, conn_length], center=true);
	translate([0, +conn_height/4, base]) cube([conn_width, conn_height/2, conn_length + 1], center=true);
	translate([0, -conn_height/4, base]) cube([conn_width - diff, conn_height/2, conn_length + 1], center=true);
	translate([0, -conn_height/4 + corner/2, 0]) cube([hole_width, hole_height, conn_length + 1], center=true);
}
