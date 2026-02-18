int x = 0;
int y = 0;
int z = 0;
void setup(){
  size(500,500);
  background(0);
  stroke(#77DD77);
}

void draw(){
  y = mouseX;
  z = mouseY;
  myFractal(250,250,200+y-z);
  if(x==50){
    background(0);
    x=0;
  }else{
    x++;
  }
}

public void myFractal(int x, int y, int size){
  rectMode(CENTER);
  
  //Normal rectangle
  rect(x,y,size,size);
  
  //Stretched rectangle
  rect(x,y,size/2,size*2);
  
  //Squashed rectangle
  rect(x,y,size*2,size/2);
  if(size>40){
    
    //Normal rectangle
    myFractal(x-size/2,y-size/2,size/2);
    myFractal(x+size/2,y-size/2,size/2);
    myFractal(x-size/2,y+size/2,size/2);
    myFractal(x+size/2,y+size/2,size/2);
    
    //Stretched rectangle
    myFractal(x-size/4,y-size,size/2);
    myFractal(x+size/4,y-size,size/2);
    myFractal(x-size/4,y+size,size/2);
    myFractal(x+size/4,y+size,size/2);
    
    //Squashed rectangle
    myFractal(x-size,y-size/4,size/2);
    myFractal(x+size,y-size/4,size/2);
    myFractal(x-size,y+size/4,size/2);
    myFractal(x+size,y+size/4,size/2);
  }
  
}
