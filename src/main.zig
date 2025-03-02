const print = @import("std").debug.print;

pub fn main() !void {
    for (1..101) |n| {
        switch (n % 15) {
            3, 6, 9, 12 => print("  Crackle", .{}),
            5, 10 => print("  Pop", .{}),
            0 => print("  CracklePop\n", .{}),
            else => print("  {: >2}", .{n}),
        }
    }
    print("\n", .{});
}
