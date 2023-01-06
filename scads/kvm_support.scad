//include <BOSL/constants.scad>
//use <BOSL/masks.scad>

$fn = $preview ? 64 : 256;

height = 3;
border = 5;

hole_lenght = 89.6;
hole_width = 23.2;

difference() {
	cube([hole_lenght+border, hole_width+border, height], center=true);
	cube([hole_lenght, hole_width, height+1], center=true);
}

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
