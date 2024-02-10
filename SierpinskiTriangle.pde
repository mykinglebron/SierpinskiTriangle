public void setup() {
  size(500, 500);
  background(0);
}

public void draw() {
  noFill();
  sierpinski(20, 480, 460, 5); // Increase the depth to 5
}

public void sierpinski(int x, int y, int len, int depth) {
  if (depth == 0) { 
    stroke(random(225), random(225), random(225));
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    sierpinski(x, y, len/2, depth - 1);
    sierpinski(x+len/2, y, len/2, depth - 1);
    sierpinski(x+len/4, y-len/2, len/2, depth - 1);
  }
}
