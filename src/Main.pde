double pi;
double target=3.1415926535897932;
int INDEX=1;
void setup() {
  //fullScreen();
  size(800, 600);
}
void draw() {
  background(0);
  update();
  if (Double.toString(pi)==Double.toString(target)) {
    noLoop();
  }
  noFill();
  stroke(255);
  strokeWeight(0.5);
  beginShape();
  for (int i=1; i<INDEX; i++) {
    float v=(float)1/(i*2-1);
    if (i%2==0) {
      v=-v;
    }
    vertex(map(i, 0, INDEX, 0, width), map(v, -1, 1, height-50, 50));
  }
  endShape();
  strokeWeight(2);
  line(0,height/2,width,height/2);
  textAlign(RIGHT, BOTTOM);
  textFont(createFont("consolas", 20));
  text(df(Double.toString(pi)), width, height-20);
  text(df(Double.toString(target)), width, height);
}
void update() {
  if (INDEX%2==1) {
    pi+=(double)4/(INDEX*2-1);
  } else {
    pi-=(double)4/(INDEX*2-1);
  }
  INDEX++;
}
String df(String d) {
  while (d.length()<18) {
    d+="0";
  }
  return d;
}
