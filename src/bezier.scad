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

function bezier_uniform(points, control_points) = [
    let(fn = (len(points)-1))
    // Measure the distance that each point is into the curve.
    let(segment_lengths = distance_between(points))
    let(curve_length = sum(segment_lengths))
    let(segment_distances = concat(0, cumulative(segment_lengths)))
    // Map each point to a point that is more uniformly spaced along the curve.
    for(i = [0 : len(segment_distances)-1])
    // Estimate the distance into the curve that the point should be if all
    // segments of the curve were the same length.
    let(even_distance = i * curve_length / (len(segment_distances)-1))
    // Find the indexes of the points that bound the desired point.
    let(left = closest_under(segment_distances, even_distance))
    let(right = min(left+1, len(segment_distances)-1))
    // Linearly interpolate the position between the points as the position
    // between the indexes.
    let(segment_length = segment_distances[right] - segment_distances[left])
    let(linear_ratio = (left == right) ? 0 : 1/segment_length)
    let(j = left + (even_distance - segment_distances[left]) * linear_ratio)
    let(t = j/fn)
    // Resample the bezier curve at the adjusted position.
    bezier_point(control_points, t)
];
