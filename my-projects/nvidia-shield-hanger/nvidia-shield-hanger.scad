width=12;

backdepth=3;
backhang=40;

backwidth=1.8;

/*
cube([backhang, backdepth, width]);

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
*/

hangerhang = 15;
hanger_length = 60;

/*
translate([fronthang-hangerhang, backdepth+backdepth+backwidth, 0]) {
  color("orange") {
    cube([hangerhang, hanger_length, width]);
  }
}

hook_height = 20;

translate([fronthang-hook_height, backdepth+backdepth+backwidth+hanger_length, 0]) {
  color("green") {
    cube([hook_height, backdepth, width]);
  }
}
*/

difference() {
rotate([0, 0, 45]) {
cylinder(20,20,10,$fn=4);
}
#translate([-20, 0, -2]) {
cube([40, 20, 25]);
}
}
