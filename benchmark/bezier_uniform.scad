use <../src/bezier.scad>;

control_points = [[0, 0], [0, 1], [1, 1], [1, 0]];
curve = bezier_curve(control_points, 16);

for(i = [0:1000]) {
    x = bezier_uniform(curve, control_points);
}
