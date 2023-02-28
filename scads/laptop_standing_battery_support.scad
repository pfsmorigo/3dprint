include <import/smow_lib.scad>

$fn = $preview ? 64 : 256;

HOLE_DIAMETER = 6;
HOLE_DISTANCE = 76;
HOLE_TO_BORDER_DIST = 80;

border = 8;
base_width = HOLE_DISTANCE+HOLE_DIAMETER+border;
base_height = HOLE_TO_BORDER_DIST;
thickness = 2;

power_brick_width = 40;
power_brick_height = 30;
power_brick_y = 10;
power_brick_length = 40;

square_hole_width = base_width-(HOLE_DIAMETER+border)*2;
square_hole_height = 25;

support_z = thickness + 3;

difference() {
	union() {
		cube([base_width, base_height, thickness], center=true);
		mirror_copy([1, 0, 0])
			translate([HOLE_DISTANCE/2, HOLE_TO_BORDER_DIST/2, 0])
				cylinder(thickness, d=HOLE_DIAMETER+border, center=true);
	}
	mirror_copy([1, 0, 0])
		translate([HOLE_DISTANCE/2, HOLE_TO_BORDER_DIST/2, 0])
			cylinder(thickness+1, d=HOLE_DIAMETER, center=true);
	translate([0, square_hole_height/2-base_height/2+border/2, 0])
		cube([square_hole_width, square_hole_height, thickness+1], center=true);
}

translate([5, power_brick_y + power_brick_length/2 + 10, 0]) rotate(180) triangle(10, 10, power_brick_height);

translate([0, power_brick_y, power_brick_height/2+thickness/2]) difference() {
	cube([power_brick_length, power_brick_width+thickness*2, power_brick_height+thickness*2], center=true);
	cube([power_brick_length+1, power_brick_width, power_brick_height], center=true);
}

/*translate([0, -(base_height/2+thickness/2), support_z/2-thickness/2]) cube([base_width, thickness, support_z], center=true);*/




// # Syntax
//
//  var = value;
//  var = cond ? value_if_true : value_if_false;
//  var = function (x) x + x;
//  module name(…) { … } name();
//  function name(…) = … name();
//  include <….scad>
//  use <….scad>

// # Constants
//
//  PI

// # Special variables
//
//  $fa  minimum angle
//  $fs  minimum size
//  $fn  number of fragments
//  $t   animation step
//  $vpr viewport rotation angles in degrees
//  $vpt viewport translation
//  $vpd viewport camera distance
//  $vpf viewport camera field of view
//  $children number of module children
//  $preview true in F5 preview, false for F6

// # Modifier Characters
//
//  * disable
//  !  show only
//  # highlight / debug
//  % transparent / background

// # 2D
//
//  circle(radius | d=diameter)
//  square(size,center)
//  square([width,height],center)
//  polygon([points])
//  polygon([points],[paths])
//  text(t, size, font, halign, valign, spacing, direction, language, script)
//  import("….ext", convexity)
//  projection(cut)

// # 3D
//
//  sphere(radius | d=diameter)
//  cube(size, center)
//  cube([width,depth,height], center)
//  cylinder(h,r|d,center)
//  cylinder(h,r1|d1,r2|d2,center)
//  polyhedron(points, faces, convexity)
//  import("….ext", convexity)
//  linear_extrude(height,center,convexity,twist,slices)
//  rotate_extrude(angle,convexity)
//  surface(file = "….ext",center,convexity)

// # Transformations
//
//  translate([x,y,z])
//  rotate([x,y,z])
//  rotate(a, [x,y,z])
//  scale([x,y,z])
//  resize([x,y,z],auto,convexity)
//  mirror([x,y,z])
//  multmatrix(m)
//  color("colorname",alpha)
//  color("#hexvalue")
//  color([r,g,b,a])
//  offset(r|delta,chamfer)
//  hull()
//  minkowski(convexity)

// # Lists
//
//  list = […, …, …];  create a list
//  var = list[2];     index a list (from 0)
//  var = list.z;      dot notation indexing (x/y/z)

// # Boolean operations
//
//  union()
//  difference()
//  intersection()

// # List Comprehensions
//
//  Generate [ for (i = range|list) i ]
//  Generate [ for (init;condition;next) i ]
//  Flatten [ each i ]
//  Conditions [ for (i = …) if (condition(i)) i ]
//  Conditions [ for (i = …) if (condition(i)) x else y ]
//  Assignments [ for (i = …) let (assignments) a ]

// # Flow Control
//
//  for (i = [start:end]) { … }
//  for (i = [start:step:end]) { … }
//  for (i = […,…,…]) { … }
//  for (i = …, j = …, …) { … }
//  intersection_for(i = [start:end]) { … }
//  intersection_for(i = [start:step:end]) { … }
//  intersection_for(i = […,…,…]) { … }
//  if (…) { … }
//  let (…) { … }

// # Type test functions
//
//  is_undef
//  is_bool
//  is_num
//  is_string
//  is_list
//  is_function

// # Other
//
//  echo(…)
//  render(convexity)
//  children([idx])
//  assert(condition, message)

