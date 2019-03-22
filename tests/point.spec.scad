use <../src/bezier.scad>;
use <./utils/test.scad>;

test("Base condition at (t=0)",
    bezier_point([[0, 0, 0]], 0),
    [[0, 0, 0]]
);

test("Base condition at (t=0.5)",
    bezier_point([[0, 0, 0]], 0.5),
    [[0, 0, 0]]
);

test("Base condition at (t=1)",
    bezier_point([[0, 0, 0]], 1),
    [[0, 0, 0]]
);

test("Base point at (fn=1)",
    bezier_curve([[0, 0, 0]], 1),
    [[0, 0, 0]]
);

test("Base point at (fn=2)",
    bezier_curve([[0, 0, 0]], 2),
    [[0, 0, 0]]
);
