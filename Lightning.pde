int startX = 200;
int startY=0;
int endX = 0;
int endY = 40;
PImage img;
void setup()

{
  background(0,0,0);
  size(600, 600);
  strokeWeight(4); //default
  noLoop();
  //images must be in the "data" directory to load correctly 
  img= loadImage("cups.jpg.gif");

}
void draw()
{
  
  stroke(249,248,193);
  //stroke((int)(Math.random()*256));
  while (endX< 350) {
    endX= startX+ ((int)(Math.random()*20));
    endY= startY+ ((int)(Math.random()*90)-10);
    line(startX, startY, endX, endY);
    startX= endX;
    startY= endY;
   }
 
 image(img,58,269,500,400);
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
startX = 200;
startY=0;
endX = 0;
endY = 40;
   redraw();
}