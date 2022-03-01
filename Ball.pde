class Ball {
  int positionX;
  int positionY;
  int tailleX;
  int tailleY;
  
  Ball(int nouvPosX, int nouvPosY, int nouvTailleX, int nouvTailleY) {
    this.positionX = nouvPosX;
    this.positionY = nouvPosY;
    this.tailleX = nouvTailleX;
    this.tailleY = nouvTailleY;
    
  }
  
   void display() {
    rect(this.positionX, this.positionY, this.tailleX, this.tailleY);
  }


  }
