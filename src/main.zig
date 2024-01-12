const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    if (args.len < 3) {
        std.debug.print("insufficient arguments\n", .{});
        return;
    }

    if (std.mem.eql(u8, args[1], "run")) {
        std.debug.print("Hola mi amor\n", .{});
    }
}
