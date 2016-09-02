int startX = 0;
int startY=150;
int endX = 0;
int endY = 150;
PImage img;
void setup()

{
  background(0,0,0);
  size(600, 600);
  strokeWeight(2); //default
  noLoop();
  //images must be in the "data" directory to load correctly 
  img= loadImage("cups.jpg.gif");

}
void draw()
{
  
  stroke(249,248,193);
  //stroke((int)(Math.random()*256));
  while (endX< 600) {
    endX= startX+ ((int)(Math.random()*9));
    endY= startY+ ((int)(Math.random()*18)-9);
    line(startX, startY, endX, endY);
    startX= endX;
    startY= endY;
   }
 
 image(img, 50,285);
 //image(img, 50,285,50/2,25/2);


//   noStroke();
 //  fill(245,245,220);
  //   quad(250,400, 450,400, 400,600, 300,600);
   //  stroke(255,0,0);
    // line(254,420, 446, 420);
    // line(300,590, 400, 590);

//{  stroke(178,34,34);     
//     textSize(26);
 //    text("Cup", 300, 450);
  //   text("Noodles", 320, 500);
//}

}
void mousePressed()
{
startX = 0;
startY=150;
endX = 0;
endY = 150;
   redraw();
}