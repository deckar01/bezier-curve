use <bezier.scad>;

module preview_line(point1, point2, d) {
    vector = point2 - point1;
    theta = acos(vector.z/norm(vector));
    phi = atan2(vector.y, vector.x);

    translate(point1)
    rotate([0, theta, phi])
    cylinder(d=d, h=norm(vector), $fn=16);
}

module preview_curve(curve, control_points, d=1) {
    for(point = curve) {
        color("yellow")
        translate(point)
        sphere(d=d/2, $fn=16);
    }
    for(i = [0:len(curve)-2]) {
        color("yellow")
        preview_line(curve[i], curve[i+1], d=d/4);
    }
    for(point = control_points) {
        color("red")
        translate(point)
        sphere(d=d, $fn=16);
    }
    for(i = [0:len(control_points)-2]) {
        color("blue")
        preview_line(control_points[i], control_points[i+1], d=d/4);
    }
}
