void setup() {
  size(400,500);
  noLoop();
}
Die bob;
void draw() {
  background((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
  int counter = 0;
  for(int y = 25; y < 350; y += 75) {
    for(int x = 20; x < 350; x += 75) {
      bob = new Die(x,y);
      bob.show();
      counter += bob.numRolled;
    }
  }
  textSize(30);
  text("Total number rolled: " +
  counter, 25, 450);
}
void mousePressed() {
      redraw();
     
}
  class Die //models one single dice cube
  {
      //member variable declarations here
      int numRolled;
      int diceX;
      int diceY;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          roll();
          diceX = x;
          diceY = y;
      }
      void roll()
      {
          numRolled = (int)(Math.random()*6) + 1;
      }
      void show()
      {
          noStroke();
        fill(0);
       
        //ellipse(myX, myY, 40, 50);
        rect(diceX, diceY, 60, 60);
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        if (numRolled == 1)
        {
        ellipse(diceX+30, diceY+30, 10,10);
        } else if (numRolled == 2)
        {
            ellipse(diceX+20, diceY+30, 8,8);
            ellipse(diceX+40, diceY+30, 8,8);
        } else if (numRolled ==3) 
        {        
           ellipse(diceX+30, diceY+20, 8,8);
           ellipse(diceX+45, diceY+40, 8,8);
           ellipse(diceX+15, diceY+40, 8,8); 
        } else if (numRolled == 4)
        {
           ellipse(diceX+20, diceY+20, 8,8);
           ellipse(diceX+40, diceY+20, 8,8);
           ellipse(diceX+20, diceY+40, 8,8);
           ellipse(diceX+40, diceY+40, 8,8);
        }  else if (numRolled ==5)
        {
           ellipse(diceX+20, diceY+20, 8,8);
           ellipse(diceX+40, diceY+20, 8,8);
           ellipse(diceX+20, diceY+40, 8,8);
           ellipse(diceX+40, diceY+40, 8,8);
           ellipse(diceX+30, diceY+30, 8,8);
        } else
        {      
           ellipse(diceX+20, diceY+10, 8,8);
           ellipse(diceX+20, diceY+30, 8,8);
           ellipse(diceX+20, diceY+50, 8,8);
           ellipse(diceX+40, diceY+10, 8,8);
           ellipse(diceX+40, diceY+30, 8,8);
           ellipse(diceX+40, diceY+50, 8,8);
      }
      }
  }
