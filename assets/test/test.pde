int dim;
int lineCount = 100;
float[] posX1 = new float[lineCount];
float[] posY1 = new float[lineCount];
float[] posX2 = new float[lineCount];
float[] posY2 = new float[lineCount];
float[] dir1  = new float[lineCount];
float[] dir2  = new float[lineCount];
float[] dir3  = new float[lineCount];
float[] dir4  = new float[lineCount];
int[] colorVal = new int[lineCount];

void setup()
{
  size(800,800);
  colorMode(HSB, 360, 100, 100);
  ellipseMode(RADIUS);
//  drawCircle();
  createLines();


  dim = width / 2;
  frameRate(60);

}

void draw() {
  background(0);
  moveLines();
}

void createLines(){
  for(int i = 0; i < lineCount; i ++){
    posX1[i] = -1*(random(width*2));
    posY1[i] = -1*(random(width*2));
    posX2[i] = random(width*2) + width;
    posY2[i] = random(height*2) + height;
    
    dir1[i] = int(random(1,3));
    dir2[i] = int(random(1,3));
    dir3[i] = int(random(1,3));
    dir4[i] = int(random(1,3));
    
    colorVal[i] = int(random(0,255));
    stroke(colorVal[i],80,80);
    line(posX1[i], posY1[i], posX2[i], posY2[i]);
    
  }
}

void moveLines(){
  for(int i = 0; i < lineCount; i ++){
    if(dir1[i] == 1)
    {
      posX1[i]--;
    }else{
      posX1[i]++;
    }
    if(dir2[i] == 1)
    {
      posX2[i]--;
    }else{
      posX2[i]++;
    }
    if(dir3[i] == 1)
    {
      posY1[i]--;
    }else{
      posY1[i]++;
    }
    if(dir4[i] == 1)
    {
      posY2[i]--;
    }else{
      posY2[i]++;
    }
    
    stroke(colorVal[i],80,80);
    line(posX1[i], posY1[i], posX2[i], posY2[i]);
  }
}

//void drawCircle(){
//
//  float hue = random(100,360);
//  float brightness = random(80,100);
//  for (int r = width/2; r > 0; --r) {
//    hue = (hue -1);
//    if(hue <= 0){
//      hue = 360;
//    }
//    noStroke();
//    fill(hue, 80, brightness, 100);
//    ellipse(width/2, height/2, r, r);
//  }
//}
// void animateLines(){

// }

// void drawLines(){
//   for(i)
// }
// float z=100;
// float x=100;
// float y=100;

// boolean paused = false; // set up boolean variable called pause assumes it starts with key not pressed

// void setup(){
//   size (800,800);
//   background (255); //white background
//   smooth(); // setting smoothness
// }

// void draw() {
//      if(!paused) runMyCode(); //if keypressed is false run the code called runMyCode
// }

// void runMyCode() { // running of the code if key pressed is false
//      //filling all variables with random values
//     x=random(width);// random x position between 0 and 100
//     y=random(height);// random y position between 0 and 100

//   //use values to draw an ellipse


//   //if mouse is pressed lines become white
//   // else the lines are random

//   if ((mouseX<width/2) && (mouseY<height/2) && (mousePressed)) {
//       stroke (255,0,0);//stroke with red
//       line (pmouseX,pmouseY,x,y);// draw lines starting at mouse position and shooting out at random positions
//   } else if ((mouseX>width/2) && (mouseY<height/2) && (mousePressed)) {
//       stroke (0,255,0);//stroke with green
//       line (pmouseX,pmouseY,x,y);// draw lines starting at mouse position and shooting out at random positions
// } else if ((mouseX<width/2) && (mouseY>height/2) && (mousePressed)) {
//       stroke (0,0,255);//stroke with blue
//       line (pmouseX,pmouseY,x,y);// draw lines starting at mouse position and shooting out at random positions
// } else if ((mouseX>width/2) && (mouseY>height/2) && (mousePressed)) {
//       stroke (0);//stroke with black
//       line (pmouseX,pmouseY,x,y);// draw lines starting at mouse position and shooting out at random positions
// } else{
//       stroke (random(255),random(255),random(255),random(255));//fill with random colour and opacity
//       line (pmouseX,pmouseY,x,y);// draw lines starting at mouse position and shooting out at random positions
// }
// }




// void keyPressed() {
//      paused = !paused;
// }

