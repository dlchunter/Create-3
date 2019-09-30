PImage img;
PImage img2;

  int x= 1;
  int y= 1;
  int size = 500;
  int size2 = 600;
  
  float e= 2.718;
  
  int screenx = 1920;
  int screeny = 1440;


  

void setup() {
  size(1920, 1440);
  frameRate(60);
  img = loadImage("Quack_Attack.jpg");
  img2 = loadImage("GetImage.jpg");
  imageMode(CENTER);
  
}

void draw() {
  function();

} 

void function() {
  background(255);
  
  image(img, x, (screeny/2)+sin(y/4)*e,size,size);
  image(img2, x+500, (screeny/2)+sin(y/4)*2*e,size2,size2);
  
  x=x+3;
  y ++;
  size=(size+3);
  if(size > random(1,1000)) {
    size-=500;
  }
  if(size <=random(1,1000)) {
    size++;
  

  size=(size+3);
  if(size2 > random(1,1000)) {
    size2-=400;
  }

  if(size2 <=random(1,1000)) {
    size2++;
  }
  }

  
}
