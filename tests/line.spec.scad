use <../src/bezier.scad>;
use <./utils/test.scad>;

test("Linear interpolation at (t=0)",
    bezier_point([[0, 0, 0], [1, 1, 1]], 0),
    [0, 0, 0]
);

test("Linear interpolation at (t=0.5)",
    bezier_point([[0, 0, 0], [1, 1, 1]], 0.5),
    [0.5, 0.5, 0.5]
);

test("Linear interpolation at (t=1)",
    bezier_point([[0, 0, 0], [1, 1, 1]], 1),
    [1, 1, 1]
);

test("Line at (fn=1)",
    bezier_curve([[0, 0, 0], [1, 1, 1]], 1),
    [[0, 0, 0], [1, 1, 1]]
);

test("Line at (fn=2)",
    bezier_curve([[0, 0, 0], [1, 1, 1]], 2),
    [[0, 0, 0], [0.5, 0.5, 0.5], [1, 1, 1]]
);
