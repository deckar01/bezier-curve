module test(name, actual, expected) {
    if(actual != expected) {
        echo("");
        echo(str(name, " FAILED!"));
        echo(str("Expected ", expected, ", but got ", actual));
        echo("");
    } else {
        echo(str(name, " PASSED!"));
    }
}
