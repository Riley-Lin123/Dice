int total = 0;

    void setup()
  {
      noLoop();
      size(500,500);
     
  }
  void draw()
  {
    background(192);
      total = 0;
      //your code here
      for (int i = 1; i <= 450; i+=50){
        for (int j = 1; j <= 500; j+=50) {
          
          die1 = new Die(j,i);
          die1.roll();
          
          die1.show();
          
  }
  
      }
      fill(0);
      text("total: " + total, 225, 475);
      fill(255);
  }
  void mousePressed()
  {
      
      redraw();
  }
  
  Die die1;
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, rolled;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          ;
      }
      void roll()
      {
          //your code here
          rolled = (int) (Math.random()*6) + 1;

      }
      
      void show()
      {
          //your code here
          rect(myX, myY, 50,50);
          fill(0,0,0);
          if (rolled == 1){
            fill((int)(Math.random()*206)+50,(int)(Math.random()*206)+50,(int)(Math.random()*206)+50);
            ellipse(myX+25, myY+25,5,5);
            total = total + 1;
          } else if (rolled == 2){
            fill((int)(Math.random()*206)+50,(int)(Math.random()*206)+50,(int)(Math.random()*206)+50);
            ellipse(myX+10, myY+10,5,5);
            ellipse(myX+40, myY+40,5,5);
            total = total + 2;
          } else if(rolled == 3){
            fill((int)(Math.random()*206)+50,(int)(Math.random()*206)+50,(int)(Math.random()*206)+50);
            ellipse(myX+10, myY+10,5,5);
            ellipse(myX+25, myY+25,5,5);
            ellipse(myX+40, myY+40,5,5);
            total = total + 3;
          } else if (rolled == 4){
           fill((int)(Math.random()*206)+50,(int)(Math.random()*206)+50,(int)(Math.random()*206)+50);
            ellipse(myX+10, myY+10,5,5);
            ellipse(myX+40, myY+10,5,5);
            ellipse(myX+10, myY+40,5,5);
            ellipse(myX+40, myY+40,5,5);
            total = total + 4;
          } else if (rolled == 5){
            fill((int)(Math.random()*206)+50,(int)(Math.random()*206)+50,(int)(Math.random()*206)+50);
            ellipse(myX+10, myY+10,5,5);
            ellipse(myX+40, myY+10,5,5);
            ellipse(myX+10, myY+40,5,5);
            ellipse(myX+40, myY+40,5,5);
            ellipse(myX+25, myY+25,5,5);
            total = total + 5;
          } else if (rolled == 6){
            
            fill((int)(Math.random()*206)+50,(int)(Math.random()*206)+50,(int)(Math.random()*206)+50);
             ellipse(myX+10, myY+10,5,5);
             ellipse(myX+40, myY+10,5,5);
             ellipse(myX+10, myY+40,5,5);
             ellipse(myX+40, myY+40,5,5);
             ellipse(myX+10, myY+25,5,5);
             ellipse(myX+40, myY+25,5,5);
             total = total + 6;
          }
          fill(255,255,255);
         
          
      } //end of void show
      
  }
