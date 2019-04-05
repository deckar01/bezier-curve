use <utils.scad>;

function bezier_point(control_points, t) = (
    len(control_points) < 2 ? (
        control_points[0]
    ) : (
        (1-t) * bezier_point(slice(control_points, end=1), t) +
        (t) * bezier_point(slice(control_points, start=1), t)
    )
);

function bezier_curve(control_points, fn) = (
    len(control_points) < 2 ? (
        control_points
    ) : [
        for(i = [0:fn])
        bezier_point(control_points, i/fn)
    ]
);
