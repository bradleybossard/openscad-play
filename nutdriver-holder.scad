

module cy_holder(inner_radius, outer_radius, height) {
  difference() {
    union() {
      translate([0, inner_radius, 0]) {  
        cube([outer_radius*2, height, height], center=true);
      }    
      cylinder(h = height, r=outer_radius, center = true);
    }
    cylinder(h = height+2, r=inner_radius, center = true);      
  }
}


module peg_holder(radius, cut_width) {
  rotate([0, 0, 180]) {
    difference() {
      union() {  
        sphere(r=radius, center=true);
        translate([0, radius*1.2, 0]) {
          width = radius * 0.8;
          cube([width, width, width], center=true);
        }
      }  
      cube([cut_width, radius*2, radius*2], center=true);
    }
  }
}

translate([0, 13, 0]) {
  peg_holder(radius=3, cut_width=1);
}

union() {
  inner_radius = 4;
  outer_radius = 7;
  height = 5;
    
  cy_holder(inner_radius=inner_radius,
            outer_radius=outer_radius,
            height=height);
/*
  translate([14, 0, 0]) {
    cy_holder(4, 7, 10);
  }
*/    
};
