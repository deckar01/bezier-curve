use <../src/bezier.scad>;
use <./utils/test.scad>;

test("Cubic interpolation at (t=0)",
    bezier_point([[0, 0], [0, 1], [1, 1], [1, 0]], 0),
    [[0, 0]]
);

test("Cubic interpolation at (t=0.25)",
    bezier_point([[0, 0], [0, 1], [1, 1], [1, 0]], 0.25),
    [[0.15625, 0.5625]]
);

test("Cubic interpolation at (t=0.5)",
    bezier_point([[0, 0], [0, 1], [1, 1], [1, 0]], 0.5),
    [[0.5, 0.75]]
);

test("Cubic interpolation at (t=0.75)",
    bezier_point([[0, 0], [0, 1], [1, 1], [1, 0]], 0.75),
    [[0.84375, 0.5625]]
);

test("Cubic interpolation at (t=1)",
    bezier_point([[0, 0], [0, 1], [1, 1], [1, 0]], 1),
    [[1, 0]]
);

test("Cubic curve at (fn=4)",
    bezier_curve([[0, 0], [0, 1], [1, 1], [1, 0]], 4),
    [[0, 0], [0.15625, 0.5625], [0.5, 0.75], [0.84375, 0.5625], [1, 0]]
);
