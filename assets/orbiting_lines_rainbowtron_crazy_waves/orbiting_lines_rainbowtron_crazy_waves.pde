int dim;
int rectCount = 10;
float[] rect_pos_x = new float[rectCount];
float[] rect_pos_y = new float[rectCount];
float[] rect_pos_z = new float[rectCount];
float[] rect_scale = new float[rectCount];
float[] rect_reset_point = new float[rectCount];
float[] rect_wave = new float[rectCount];
float[] rect_width = new float[rectCount];
float[] rect_height = new float[rectCount];
float[] posY2 = new float[rectCount];
float[] dir1  = new float[rectCount];
float[] dir2  = new float[rectCount];
float[] dir3  = new float[rectCount];
float[] dir4  = new float[rectCount];
int[] colorVal = new int[rectCount];

void setup()
{
  size(800,800,P3D);
  colorMode(HSB, 360, 100, 100);
  ellipseMode(RADIUS);
  pushMatrix();
    rectMode(CENTER);
    fill(360,0,0,255);
    rect(width/2,height/2,width,height);
  popMatrix();
  createRectangles();
  frameRate(30);

}

void draw() {
  pushMatrix();
    rectMode(CENTER);
    fill(360,0,0,20);
    rect(width/2,height/2,width,height);
  popMatrix();
  moveRect();
}

void createRectangles() {
  for(int i = 0; i < rectCount; i ++){
    rect_pos_x[i] = random(0,50);
    rect_pos_y[i] = int(random(height));
    rect_pos_z[i] = random(0,3);
    rect_scale[i] = (rect_pos_z[i])*0.5;
    rect_width[i] = rect_scale[i]*rect_pos_z[i];
    rect_height[i] = rect_width[i] / 5;
    
    noStroke();
    rectMode(CENTER);
    fill(rect_pos_x[i]/2, 70, 100, rect_pos_z[i]*25);
    rect(rect_pos_x[i], rect_pos_y[i], 16, 2);
    translate(0,0,rect_pos_z[i]);
    println(i);
  }
}

void moveRect() {
  for(int i = 0; i < rectCount; i ++){
    rect_pos_x[i] = rect_pos_x[i] + rect_pos_z[i];
    
    rect_reset_point[i] = width + (rect_scale[i]*rect_pos_z[i]);
    
    if(rect_pos_x[i] > rect_reset_point[i]){
      rect_pos_x[i] = -1*(rect_width[i]);
    }
    
    rect_wave[i] = (cos(rect_pos_x[i]));
    
    noStroke();
    rectMode(CENTER);
    fill(rect_pos_x[i]/2, 70, 100, 255);
    rect(rect_pos_x[i], rect_pos_y[i], 16, 2);
    translate(0,0,rect_pos_z[i]);
    rotate(0.0001*rect_pos_x[i]);
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

