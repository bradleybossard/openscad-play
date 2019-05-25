module holder()
{
  difference() {
      cube([100, 12, 10], center = true);
    translate([5, 0, 0]) {
      cylinder(h = 11, r1 = 4, r2 = 5, center = true);
    };
  }
}

echo(version=version());

holder();
