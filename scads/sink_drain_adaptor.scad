/*include <BOSL2/std.scad>*/
/*include <BOSL2/threading.scad>*/

$fn = $preview ? 64 : 256;

hole = 38;
thickness = 5;

top_width = hole+thickness;
top_height = 62;

middle_height = 10;

base_height = 20;
base_low_width = 28;
base_low_height = 2;
base_hole = 19;
base_width = base_hole+thickness;

translate([0, 0, top_height/2+middle_height+base_height/2]) {
 	difference() {
		union() {
			cylinder(top_height, d=top_width, center=true);
			translate([0, top_width/2, -9]) rotate([90, 0, 0])
				cylinder(top_width, d=hole+thickness, center=true);
		}
		cylinder(top_height, d=top_width-thickness, center=true);
		translate([0, top_width/2, -9]) rotate([90, 0, 0])
			cylinder(top_width, d=hole, center=true);
	}
}

translate([0, 0, middle_height/2+base_height/2]) difference() {
	cylinder(middle_height, d1=base_width, d2=top_width, center=true);
	cylinder(middle_height, d1=base_width-thickness, d2=top_width-thickness, center=true);
}

difference() {
	union() {
		cylinder(base_height, d=base_width, center=true);
		translate([0, 0, base_low_height/2-base_height/2])
			cylinder(base_low_height, d=base_low_width, center=true);
	}
	cylinder(base_height, d=base_hole, center=true);
}









/*height = 60;*/
/*width = 50;*/

/*threaded_width = 31.4;*/
/*threaded_height = 10;*/

/*hole = 38;*/






/*difference() {*/
	/*threaded_rod(d=width+2, height=height, pitch=1.9, $fa=1, $fs=1);*/
	/*#cylinder(height+20, d=width-thickness, center=true);*/
/*}*/

/*difference() {*/
	/*union() {*/
		/*cylinder(height, d=width, center=true);*/
		/*translate([0, width/4, 0]) rotate([90, 0, 0]) cylinder(width/2, d=width, center=true);*/
	/*}*/
	/*translate([0, 0, threaded_height]) cylinder(height, d=hole, center=true);*/
	/*translate([0, width/4, 0]) rotate([90, 0, 0]) cylinder(width/2, d=hole, center=true);*/
	/*translate([0, 0, threaded_height/2-height/2])*/
		/*threaded_rod(d=threaded_width, height=threaded_height, pitch=1.9, $fa=1, $fs=1, left_handed=true);*/
/*}*/

/*translate([0, 0, 30]) cylinder(height+40, d=width+space, center=true);*/
/*translate([0, 0, height]) cylinder(height+20, d=width+space, center=true);*/
