width=12;

backdepth=3;
backhang=40;

backwidth=1.8;

union() {

    
color("yellow") {
  cube([backhang, backdepth, width]);
}

translate([0, backdepth, 0]) {
  color("blue") {
    cube([10, backwidth, width]);
  }
}

fronthang=30;

translate([0, backdepth+backwidth, 0]) {
  color("red") {
    cube([fronthang, backdepth, width]);
  }
}

cap_radius = 9 / 2;
shaft_radius = 4 / 2;
cap_position = backdepth + backwidth + backdepth + backdepth + 3;

color("green") {
    translate([fronthang - cap_radius * 4, cap_position, width/2 ]) {
        rotate([90, 0, 0]) {
            union() {
                cylinder(h=3, r1=cap_radius , r2=cap_radius, center=false, $fn=100);
                cylinder(h=6, r1=shaft_radius, r2=shaft_radius, center=false, $fn=100);
            }
        }
    }
}

}