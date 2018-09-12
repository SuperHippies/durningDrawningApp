int size1 = 300;
int size2 = 500;
float[] blueballx = new float [size1];
float[] bluebally = new float [size1];
float[] blueballspeedx = new float [size1];
float[] blueballspeedy = new float [size1];
float[] greenballx = new float [size2];
float[] greenbally = new float [size2];
float[] greenballspeedx = new float [size2];
float[] greenballspeedy = new float [size2];
int blue=0;
int red=0;

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  for (int i =0; i < size1; i++) {
    blueballspeedx[i]= random(-15, 15);
    blueballspeedy[i]= random(-15, 15);
    blueballx[i]= random(5, width-5);
    bluebally[i]= random(5, width -5);
  }
  for (int i =0; i < size2; i++ ) {
    greenballspeedx[i]=random(-1, 1);
    greenballspeedy[i]=random(-1, 1);
    greenballx[i]= random(10, width-10);
    greenbally[i]= random( 10, width-10);
  }
}
void draw() {
  for (int i = 0; i < size1; i++) {
    blueballx[i]= blueballx[i]+ blueballspeedx[i];
    bluebally[i]= bluebally[i]+ blueballspeedy[i];
    fill(mouseY,mouseX,blue);
    ellipse(blueballx[i], bluebally[i], 20, 20);
    if (blueballx[i]>= width-5|| blueballx[i]<=5) {
      blueballspeedx[i]= -blueballspeedx[i];
    }
    if (bluebally[i]>= height-5|| bluebally[i]>=5) {
      blueballspeedy[i]= -blueballspeedy[i];
    }
  }
  for (int i= 0; i < size2; i++) {
    greenballx[i]=greenballx[i]+ greenballspeedx[i];
    greenbally[i]=greenbally[i]+ greenballspeedy[i];
    fill(red,mouseY,mouseX);
    ellipse(greenballx[i],greenbally[i],10,10);
    if (greenballspeedx[i]>=width-10||greenballspeedx[i]<=10) {
      greenballspeedx[i]= -greenballspeedx[i];
    }
    if (greenballspeedy[i]>=height-10||greenballspeedy[i]>=10) {
      greenballspeedy[i]= -greenballspeedy[i];
    }
  }
  textSize(45);
  stroke(0,0,0);
  fill(66,88,199);
  //text("Red: "+red+" Blue: "+blue, width/2, height/2);
  
}
void keyPressed() {
  if (key == 's'||key =='S') {
    saveFrame("Project#1 By Stevenson#####.png");
  }
  if (key == 'a'||key == 'A'){
    blue-=30;
    red -=30;
  }
  if (key =='d'||key == 'D'){
  blue +=30;
  red +=30;
  }
}
