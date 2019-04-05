function sum(values, total=0) = (
    (len(values) > 1) ? sum(
        [for(i = [0:len(values)-2]) values[i]],
        total + values[len(values)-1]
    ) : (
        total + values[0]
    )
);

function cumulative(values, i=0, total=0, s=[]) = (
    (i < len(values)) ? (
        let(t = total+values[i])
        cumulative(values, i+1, t, concat(s, t))
    ) : (
        s
    )
);

function distance_between(points) = [
    for(i = [0 : len(points)-2])
    norm(points[i+1] - points[i])
];

function closest_under(c, x, i=0) = (
    (i < len(c) - 1) ? (
        (c[i+1] > x) ? i : closest_under(c, x, i+1)
    ) : (
        i
    )
);

function slice(P, start=0, end=0) = [
    for(i = [start:len(P)-1-end])
    P[i]
];
