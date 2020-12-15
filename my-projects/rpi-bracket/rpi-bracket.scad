

module pill (width, radius) {
  hull() {
  circle(r=radius, $fn=100);
  translate([width - radius * 2, 0, 0]) {
    circle(r=radius, $fn=100);
  }
  }
}

inner_width = 70.2;
inner_radius = 24.8 / 2;

outer_width = inner_width + 6;
outer_radius = inner_radius + 3;

linear_extrude(height=3) {
difference() {
pill(outer_width, outer_radius);
pill(inner_width, inner_radius);
}
}