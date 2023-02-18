module triangle(x, y, z) {
    polyhedron(
        points=[[0,0,0],[x,0,0],[x,y,0],[0,y,0],[0,y,z],[x,y,z]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

module mirror_copy(v) {
	children();
	mirror(v) children();
}


