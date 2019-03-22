use <../src/preview.scad>;

preview_bezier_curve(
    [
        [0, 0, 0],
        [0, 10, 5],
        [10, 10, 0],
        [10, -5, 5],
        [20, 0, 10],
    ],
    fn=32
);
