height = 5;
width = 43;
depth = 32;

cut_depth = 12;
cut_height = 2;

trim_depth = 6;

module triangle(x, y, z) {
    polyhedron(
        points=[[0,0,0],[x,0,0],[x,y,0],[0,y,0],[0,y,z],[x,y,z]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

difference() {
	cube([width, depth, height]);
	translate([0, 0, height-cut_height]) cube([width, cut_depth, cut_height]);
	translate([0, depth-trim_depth, 0]) triangle(width, trim_depth, height);
}
