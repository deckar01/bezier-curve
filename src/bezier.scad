function bezier_left(P) = [for(i = [0:len(P)-2]) P[i]];
function bezier_right(P) = [for(i = [1:len(P)-1]) P[i]];

function bezier_point(control_points, t) = (
    len(control_points) < 2 ? (
        control_points
    ) : (
        (1-t) * bezier_point(bezier_left(control_points), t) +
        (t) * bezier_point(bezier_right(control_points), t)
    )
);

function bezier_curve(control_points, fn) = (
    len(control_points) < 2 ? (
        control_points
    ) : [
        for(i = [0:fn])
        for(point = bezier_point(control_points, i/fn))
        point
    ]
);
