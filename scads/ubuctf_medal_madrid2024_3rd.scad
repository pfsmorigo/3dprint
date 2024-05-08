$fn = $preview ? 32 : 64;
x = 70;
y = x;
z1 = 2.5;
z2 = 3.5;

holder_x = 30;
holder_y = 20;
holder_border = 10;

translate([0, x/2, z1/2])
	difference() {
		cube([holder_x, holder_y, z1], center=true);
		cube([holder_x-holder_border, holder_y-holder_border, z1+1], center=true);
	}

linear_extrude(z2) resize([x, y])
	import("import/medal_madrid2024_3rd.svg", center=true);

linear_extrude(z1) resize([x, y])
	import("import/medal_back.svg", center=true);
