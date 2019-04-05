use <../src/bezier.scad>;
use <../src/preview.scad>;

control_points = [
    [0, 0, 0],
    [0, 5, 5],
    [5, 5, 0],
    [10, -10, 5],
    [30, 0, 10],
];

curve = bezier_curve(control_points, fn=32);
preview_curve(curve, control_points);
