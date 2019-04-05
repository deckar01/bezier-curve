use <../src/bezier.scad>;

for(i = [0:1000]) {
    x = bezier_curve([[0, 0], [0, 1], [1, 1], [1, 0]], 16);
}
