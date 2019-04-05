#! /bin/sh

time openscad ./benchmark/bezier_curve.scad -o /dev/null/test.stl &>/dev/null
time openscad ./benchmark/resample_bezier.scad -o /dev/null/test.stl &>/dev/null
