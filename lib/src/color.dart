part of dash;

class Color extends Vector4 {
  Color(num red, num green, num blue, [num transparency = 1]) {
    this[0] = red;
    this[1] = green;
    this[2] = blue;
    this[3] = transparency;
  }
  
  Color.black() {
    this[0] = 0;
    this[1] = 0;
    this[2] = 0;
    this[3] = 1;
  }
  
  Color.white() {
    this[0] = 1;
    this[1] = 1;
    this[2] = 1;
    this[3] = 1;
  }
  
  num get red => components[0];
  num get green => components[1];
  num get blue => components[2];
  num get transparency => components[3];
}
