height=27;
top=13.8 / 2;
bottom=10 / 2;
width=2;

margin = 2;
cube_width = top + margin;

difference() {

translate([-cube_width, 0, 0]) {
cube([cube_width*2, height + margin, width]);
}
    

linear_extrude(height=width) {
polygon(points=[
  [-top, 0],
  [top, 0],
  [bottom, height],
  [-bottom, height]
]);
}



}