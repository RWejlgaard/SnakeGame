int pposX = 1;
int pposY = 1;
boolean shouldBeDead = false;
color black = color(0,0,0);
int orientation;

void setup(){
  size(500,500);
  background(255);
  noStroke();
  frameRate(120);
}

void draw(){
  
  if(shouldBeDead){
    key = 'q';
    println("YOU DIED!");
    
  }
  
  switch(key){
    case 'w':
        pposY--;
        orientation = 1;
      break;
    case 'a':
        pposX--;
        orientation = 2;
      break;
    case 's':
        pposY++;
        orientation = 3;
      break;
    case 'd':
        pposX++;
        orientation = 4;
      break;
      
  }
 // background(255);
  drawPlayer(pposX,pposY);
  
}

void drawPlayer(int pposX, int pposY){
  fill(0);
  rect(pposX,pposY,5,5,90);
 // point(pposX,pposY);
  
  collision();
  
  if(pposX > width || pposX < 1){
    shouldBeDead = true;
  }else if (pposY > height || pposY < 1){
    shouldBeDead = true;
  }
}

void collision (){
  switch(orientation){
    case 1: //w
      if(get(pposX,pposY-4) == black){
        shouldBeDead = true;
      }
      break;
    case 2: //a
      if(get(pposX-4,pposY) == black){
        shouldBeDead = true;
      }
      break;
    case 3: //s
      if(get(pposX,pposY+4) == black){
        shouldBeDead = true;
      }
      break;
    case 4: //d
      if(get(pposX+4,pposY) == black){
        shouldBeDead = true;
      }
      break;
    
  }
}
