Die myDie;

void setup() {
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(600, 600);

  background(255);
}

void draw() {
  //your code here
  background(255);
  myDie.show();
}

void mousePressed() {
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  //variable declarations for your Die instances here
  int randomRoll;
  int x_pos,y_pos;
  //constructor
  Die(int x, int y) {
    //variable initializations here
    x_pos = x;
    y_pos = y;
  }

  //Simulate a roll of a die
  void roll() {
    //your code here, 
    //should randomly assign a value from 1 to 6
    randomRoll = (int)((Math.random() * 6)+1);
  }

  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/

  void show() {
    //your code her
    pushMatrix();
    translate(x_pos,y_pos);
    fill(0);
    for (int j = 0; j < 600; j += 200) {
      for (int i = 10; i < 610; i += 200) {
        rect(i, 10, 150, 150);
      }
      rect(0, 0, 0, 0);
    }
    
    
    popMatrix();
  }
}
