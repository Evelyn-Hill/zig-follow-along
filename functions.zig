const std = @import("std");
const expect = std.testing.expect;

fn addFive(x: u32) u32 {
    return x + 5;
}

test "addFive" {
    const n: u32 = addFive(0);
    try expect(@TypeOf(n) == u32);
    try expect(n == 5);
}

// Recursion can cause unsafe behavior because the compiler cannot fully undeerstand the stack size,
// can cause a stack overflow!

fn fib(n: u16) u16 {
    if (n == 0 or n == 1) return n;
    return fib(n - 1) + fib(n - 2);
}

test "recursion" {
    const x = fib(10);
    try expect(x == 55);
}
