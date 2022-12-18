$fn = $preview ? 32 : 128;

size = 34;
thickness = 5;

rotate_extrude(convexity = 10) translate([(size-thickness)/2, 0, 0]) circle(r = thickness/2);
