void setup()
{
    noLoop();
    size (300, 300);
    background(0);
}

void draw()
{
    int dotSum = 0;
    for (int x = 25; x < 300; x = x + 100)
         {
         for (int y = 25; y < 300; y = y + 100)
             {
             Dice bob = new Dice(x,y)
             dotSum = dotSum + bob.roll();
             bob.show();  
             }
         }
 fill(255);
 textAlign(CENTER);
 text("The sum of the dots is " + dotSum, 150, 295);
}

void mousePressed()
{
    fill(0);
    rect(0, 285,300, 15);
    redraw();
}

class Dice
{
    int myX, myY,dots, color1, color2, color3;
    Dice(x,y)
    { 
        myX = x;
        myY = y;
        dots = 0;   
        color1 = (int)((Math.random()*255)+50);
        color2 = (int)((Math.random()*255)+50);
        color3 =  (int)((Math.random()*255)+50);
    }
    
    void roll()
    {
    dots = (int)((Math.random()*6)+1); 
    return dots;
    }
    
    void show()
    {
    noStroke();
    fill(color1, color2, color3);
    rect(myX, myY, 50, 50);  
    
     if(dots == 1)
     { 
        fill(0);
        ellipse (myX +25, myY + 25, 5, 5);
      }
      else if(dots == 2)
      {
         fill(0);
         ellipse (myX +20, myY + 25, 5, 5);
         ellipse (myX +30, myY + 25, 5, 5);
      }
      else if(dots == 3)
        {
    fill(0);
    ellipse (myX +15, myY + 20, 5, 5);
    ellipse (myX +25, myY + 25, 5, 5);
    ellipse (myX +35, myY + 30, 5, 5);
   
}
else if(dots == 4)
{
    fill(0);
    ellipse (myX +15, myY + 15, 5, 5);
    ellipse (myX +35, myY + 15, 5, 5);
    ellipse (myX +15, myY + 35, 5, 5);
    ellipse (myX +35, myY + 35, 5, 5);
}
else if(dots == 5)
{
    fill(0);
    ellipse (myX +15, myY + 15, 5, 5);
    ellipse (myX +35, myY + 15, 5, 5);
    ellipse (myX +15, myY + 35, 5, 5);
    ellipse (myX +35, myY + 35, 5, 5);
    ellipse (myX + 25, myY + 25, 5, 5);
}
else
{
    fill(0);
    ellipse (myX +15, myY + 15, 5, 5);
    ellipse (myX +25, myY + 15, 5, 5);
    ellipse (myX + 35, myY + 15, 5, 5);
    ellipse (myX +15, myY + 35, 5, 5);
    ellipse (myX +25, myY + 35, 5, 5);
    ellipse (myX + 35, myY + 35, 5, 5);
}
}
}
