#! /bin/sh

for test in ./tests/*.spec.scad; do
  echo "Testing $test..."
  output="$(openscad $test -o /dev/null/test.stl 2>&1)"

  if [[ $output =~ FAILED ]]; then
    echo "$output"
    echo ""
    echo "A test has failed!"
    exit 1
  else
    echo "$output" | grep "PASSED"
  fi

  echo ""
done

echo "All tests have passed!"
