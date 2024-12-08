const std = @import("std");
const expect = std.testing.expect;

// Key takeaway here is that zig does not allow us to have unused values.

test "for" {
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string, 0..) |character, index| {
        // This is why we must assign these values to _
        _ = character;
        _ = index;
    }
}
