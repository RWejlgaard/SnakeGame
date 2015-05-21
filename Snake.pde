int pposX;
int pposY;
boolean shouldBeDead = false;
color black = color(0,0,0);
int orientation;
int cellSize = 4;
public void setup(){
  size(500,500);
  background(255);
  //noStroke();
  frameRate(59);
  pposX = width / 2;
  pposY = height / 2;
  int numCellsX = width / cellSize;
  int numCellsY = height / cellSize;
  int[] cellsX = new int[numCellsX];
  int[] cellsY = new int[numCellsY];
  
}

void draw(){
  
  if(shouldBeDead){
    key = 'q';
    println("YOU DIED!");
    if(keyPressed){
      setup();
      shouldBeDead = false;
    }
  }
  
  drawGrid();
  
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

void drawGrid(){
  
  //cellsX[1] = 42;
  fill(255);
  for (int iX = cellSize/2; iX < width-5; iX+=cellSize){
    for (int iY = cellSize/2; iY < height-5; iY+=cellSize){
      rect(iX, iY,cellSize,cellSize);
  }
    rect(iX, cellSize/2,cellSize,cellSize);
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
