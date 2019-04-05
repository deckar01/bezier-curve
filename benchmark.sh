#! /bin/sh

echo "bezier_curve (1000x)\c"
time openscad ./benchmark/bezier_curve.scad -o /dev/null/test.stl &>/dev/null
echo
echo "bezier_uniform (1000x)\c"
time openscad ./benchmark/bezier_uniform.scad -o /dev/null/test.stl &>/dev/null
