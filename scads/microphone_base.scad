$fn = $preview ? 64 : 256;

square_size = 18.5;

height = 2;
width = square_size + 15;
lenght = 28;

trail_width = 12;
trail_height = 2;
trail_length = lenght - 4;

difference() {
	union() {
		cylinder(height, width/2, width/2, center=true);
		translate([0, 0, height/2+trail_height/2]) cube([trail_width, trail_length, trail_height], center=true);
	}
	cube([square_size, square_size, height], center=true);
	translate([0, 0, height/2+trail_height/2]) cube([square_size, square_size -5 , trail_height], center=true);
}
