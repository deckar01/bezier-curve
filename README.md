# OpenSCAD Bezier Curves

A recursive implementation of bezier curves for OpenSCAD.

## Usage

### bezier::bezier_curve(control_points, fn)

A function that produces a set of points lying on the bezier curve defined
by a set of control points.

- **Arguments**
    - **control_points** `Array<Vector<Float>>` - The set of coordinates
        representing control points for the bezier curve. Providing 2 points
        results in a line, 3 points in a curve, and the more points the more
        complex the curve becomes.
    - **fn** `Integer` - The number of line fragments to use when approximating
        the curve. This is similar to OpenSCAD's special `$fn` variable.
- **Returns**
    - `Array<Vector<Float>>` - A set of points lying on the bezier curve.

### bezier::bezier_point(control_points, t)

A function that samples a single point lying on the bezier curve defined by a
set of control points.

- **Arguments**
    - **control_points** `Array<Vector<Float>>` - See [`bezier::bezier_curve`][0].
    - **t** `Float` - A "time" value in the unit interval `[0, 1]`. This value
        controls how far along the curve the sampled point lays, although the
        points are not guaranteed to be sampled uniformly.
- **Returns**
    - `Vector<Float>` - A point lying on the bezier curve.

### preview::preview_bezier_curve(control_points, fn)

A module that renders a preview of a set of control points and the set of points
lying on the bezier curve defined by those control points. Points are rendered
as spheres and the lines between neighboring points are rendered as cylinders.

- **Arguments**
    - **control_points** `Array<Vector<Float>>` - See [`bezier::bezier_curve`][0].
    - **fn** `Integer` - See [`bezier::bezier_curve`][0].

## Development

### Testing

Run `./test.sh`. Test cases are in `tests/`.

### Benchmarks

Run `./benchmark.sh`. The test is in `benchmark/`.

### TODO

- Provide modules for constructing `polyhedron` meshes.
- Investigate strategies for uniformly sampling curves.
- Investigate integrating a curve primitive into OpenSCAD.

[0]: #bezierbezier_curvecontrol_points-fn
