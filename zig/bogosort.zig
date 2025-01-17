const std = @import("std");
const print = std.debug.print;
const RndGen = std.rand.DefaultPrng;

fn shuffle(array: []i32) !void {
    var seed: u64 = undefined;
    try std.os.getrandom(std.mem.asBytes(&seed));
    var prng = RndGen.init(seed);
    for (0.., array) |i, x| {
        var j = @mod(prng.random().int(u8), array.len);
        var temp = array[j];
        array[j] = x;
        array[i] = temp;
    }
}

fn is_sorted(array: []i32) bool {
    for (1.., (array.len - 1)) |i, _| {
        if (array[i - 1] >= array[i]) {
            return false;
        }
    }
    return true;
}

pub fn main() !void {
    var array = [_]i32{ 0, 3, 2, 4, 10, 1, 7, 9 };
    while (!is_sorted(&array)) {
        try shuffle(&array);
    }
    for (array) |x| {
        print("{} ", .{x});
    }
}
