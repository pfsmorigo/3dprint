

*translate([0, 0, 10]) cube([100, 100, 1]);

translate([0,0,30]) rotate([0,90,90]) {
    linear_extrude(250) {
        polygon(points=[[10,0],[10,10],[0,10],[20,40],[40,10],[30,10],[30,0]]);
    }
}

cube([1000,1000,10]);
