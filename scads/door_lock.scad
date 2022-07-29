$fn = 200;

size_x = 240;
size_y = 40;
size_z = 6;
hole = size_y / 4;
door_width = 36;

difference(){
    union() {
        translate([0, size_y / 2, 0]) cylinder(r1 = size_y/2, r2 = size_y / 2, h = size_z);
        translate([0, 0, 0]) cube([size_x, size_y, size_z]);
        translate([size_x, size_y / 2, 0]) cylinder(r1 = size_y/2, r2 = size_y / 2, h = size_z);
    }
    union() {
        translate([0, size_y / 2, 0]) cylinder(r1 = hole, r2 = hole, h = size_z + 1);
        translate([size_x - door_width, size_y / 2, 0]) cube([door_width, size_y, size_z + 1]);
    }
}
    


CubePoints = [
  [  0,  0,  0 ],  //0
  [ 10,  0,  0 ],  //1
  [ 10,  7,  0 ],  //2
  [  0,  0,  5 ],  //3
  [ 10,  0,  5 ],  //4
  [ 10,  7,  5 ],  //5
  
CubeFaces = [
  [0,1,2],  // bottom
  [3,4,1,0],  // front
  [5,4,3],  // top
  [4,5,2,1],  // right
  [5,2],  // back
  [3,0]]; // left
  
polyhedron( CubePoints, CubeFaces );






*cube([10, 10, 10]);
*%sphere(10);

*cylinder(r1 = 5, r2 = 5, h = 20);

*translate([10, 0, 0]) cube([10, 10, 10]);


*rotate(a = 90, v=[1, 0, 0]) cylinder(r1 = 5, r2 = 5, h = 10);


*for(i = [10:10:100]) {
    translate([20, i, 0]) cylinder(r1 = 5, r2 = 1, h = 20);
}