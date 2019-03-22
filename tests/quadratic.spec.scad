use <../src/bezier.scad>;
use <./utils/test.scad>;

test("Quadratic interpolation at (t=0)",
    bezier_point([[0, 0], [0, 1], [1, 1]], 0),
    [[0, 0]]
);

test("Quadratic interpolation at (t=0.5)",
    bezier_point([[0, 0], [0, 1], [1, 1]], 0.5),
    [[0.25, 0.75]]
);

test("Quadratic interpolation at (t=1)",
    bezier_point([[0, 0], [0, 1], [1, 1]], 1),
    [[1, 1]]
);

test("Quadratic curve at (fn=1)",
    bezier_curve([[0, 0], [0, 1], [1, 1]], 1),
    [[0, 0], [1, 1]]
);

test("Quadratic curve at (fn=2)",
    bezier_curve([[0, 0], [0, 1], [1, 1]], 2),
    [[0, 0], [0.25, 0.75], [1, 1]]
);
