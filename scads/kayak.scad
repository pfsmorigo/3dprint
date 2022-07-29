$fn=30;
r=0;

x=45;
y=32;
z=x*2;
t=2;
bx=120;
by=29;

cx=3;
cy=14;
cz=24;
ct=4;

rotate([0,r,0]) difference() {
    union() {
        cylinder(bx,by/2,by/2);
        translate([0,0,bx/2]) scale([1,y/x,z/x]) sphere(x/2+t);
        translate([16,0,33]) rotate([0,-25,0]) difference() {
            cube([cx,cy,cz], center = true);
            cube([cx,cy-ct,cz-ct], center = true);
        }
    }
    translate([0,0,bx/2]) scale([1,y/x,z/x]) sphere(x/2);   
    translate([0,0,bx/2+x+t]) cube((x+t)*2, center = true);
    cylinder(bx,by/2-t,by/2-t);
}

