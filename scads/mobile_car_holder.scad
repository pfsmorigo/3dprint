x = 6;
y = 20;
z = 20;

sph=17.5;
space=7;
pin_w=sph-space;
pin_h=10;
holder=2;
$fn= $preview ? 32 : 64;

module triangle(x, y, z){
    polyhedron(
        points=[[0,0,0],[x,0,0],[x,y,0],[0,y,0],[0,y,z],[x,y,z]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}
       
*translate([0,20,0]) difference() {
    cube([x,y,z]);
    translate([x/3,0,0]) cube([x/3,y-x/3,z]);
    cube([x/3,y/2,z]);
    triangle(x,y,z/2);
}

difference() {
    *cube([20,20,20]);
}

rotate([0,90,0]) union() {
    sphere(d=sph, center=true);
    translate([pin_h/2,0,0]) {
        cube([pin_h,pin_w,pin_w], center=true);
        cube([pin_h,holder,sph], center=true);
        *cube([pin_h,sph,holder], center=true);
    }
}
