Die myDie;
PFont f;
void setup() {
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(600, 600);
  noLoop();
  background(255);
  myDie = new Die();
  f = createFont("Arial",16,true);
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
  int total;
  //constructor
  Die() {
    //variable initializations here
  }

  //Simulate a roll of a die
  void roll(int i, int j) {
    //your code here, 
    //should randomly assign a value from 1 to 6
    randomRoll = (int)((Math.random() * 6)+1);
    
    if (randomRoll == 1) {
      fill(255);
      ellipse(i + 75, j + 75, 30, 30);
      total = total + 1;
    } else if (randomRoll == 2) {
      fill(255);
      ellipse(i + 37.5, j + 37.5, 30, 30);
      ellipse(i + 112.5, j + 112.5, 30, 30);
      total = total + 2;
    } else if (randomRoll == 3) {
      fill(255);
      ellipse(i + 37.5, j + 37.5, 30, 30);
      ellipse(i + 112.5, j + 112.5, 30, 30);
      ellipse(i + 75, j + 75, 30, 30);
      total = total + 3;
    } else if (randomRoll == 4) {
      fill(255);
      ellipse(i + 37.5, j + 37.5, 30, 30);
      ellipse(i + 112.5, j + 112.5, 30, 30);
      ellipse(i + 37.5, j + 112.5, 30, 30);
      ellipse(i + 112.5, j+37.5, 30, 30);
      total = total + 4;
    } else if (randomRoll == 5) {
      fill(255);
      ellipse(i + 37.5, j + 37.5, 30, 30);
      ellipse(i + 112.5, j + 112.5, 30, 30);
      ellipse(i + 37.5, j + 112.5, 30, 30);
      ellipse(i + 112.5, j+37.5, 30, 30);
      ellipse(i + 75, j + 75, 30, 30);
      total = total + 5;
    } else if (randomRoll == 6) {
      fill(255);
      ellipse(i + 37.5, j + 37.5, 30, 30);
      ellipse(i + 112.5, j + 112.5, 30, 30);
      ellipse(i + 37.5, j + 112.5, 30, 30);
      ellipse(i + 112.5, j+37.5, 30, 30);
      ellipse( i + 37.5, j + 75, 30, 30);
      ellipse(i + 112.5, j+75, 30, 30);
      total = total + 6;
    }
    textFont(f);
    fill(0);
    text(total,0,600);

  }

  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/

  void show() {
    //your code her


    fill(0);
    for ( int j = 0; j < 600; j += 200) {
      for (int i = 10; i < 610; i += 200) {

        fill(0);
        rect(i, j, 150, 150);
        roll(i, j);
      }
    }
  }
}
