const std = @import("std");
const expect = std.testing.expect;

test "if statement" {
    const a = true;
    var x: u16 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }

    try expect(x == 1);
}

test "if statement 2" {
    const a = true;

    var x: u16 = 0;
    // This is sweet syntax for this!
    x += if (a) 1 else 2;
    try expect(x == 1);
}
