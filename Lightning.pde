int startX = 0;
int startY = 500;
int endX = 0;
int endY = 500;
PImage img;

void setup()
{
  size(1000, 1000);
  img = loadImage("lightning-22 (2).jpg");
  strokeWeight(4);
  background(img);
}

void draw()
{
  stroke((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
  while (endX <= 1000) {
    endX = startX + (int) (Math.random() * 10);
    endY = startY + (int) ((Math.random() * 19) - 9);
    fill(0, 255, 0);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }  
}

void mousePressed()
{
  background(img);
  startX = 0;
  startY = 500;
  endX = 0;
  endY = 500;
}
