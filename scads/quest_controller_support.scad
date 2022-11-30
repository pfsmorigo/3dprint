$fn=60;
r=180;

x=45;
y=32;
z=x*2;
t=2;
bx=120;
by=29;

cx=14;
cy=20;
cz=4;
ct=4;

rotate([0,r,0]) difference() {
    union() {
        cylinder(bx,by/2,by/2);
        translate([0,0,bx/2]) scale([1,y/x,z/x]) sphere(x/2+t);
        translate([22,0,(bx/2)-t]) difference() {
            cube([cx,cy,cz], center = true);
            cube([cx-ct,cy-ct,cz], center = true);
        }
    }

    translate([0,0,bx/2]) scale([1,y/x,z/x]) sphere(x/2);
    translate([0,0,bx/2+x+t]) cube((x+t)*2, center = true);
    cylinder(bx,by/2-t,by/2-t);
}
