void createStart() {
  //Notice the code for drawing one
  for (int i = 0; i< stars.length; i++) {
    stars[i] = new Star(random(width), random(height), random(Star.getMaxRadius()));
  }
}
