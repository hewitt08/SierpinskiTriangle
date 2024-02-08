public void setup(){
  size(1000,1000);
  fill(200,0,0);
  sierpinski(0, width, height);
}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    stroke(0);
    fill(200,0,0);
    triangle(x, y, x+len, y, x+(len/2), y-len);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}
