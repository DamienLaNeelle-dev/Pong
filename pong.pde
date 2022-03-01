void setup() {
  size(1000, 1000);
}

int x = 0;
int y = 425;
boolean moveUp = true;
boolean moveRight = true;
int vitesse = 4;
int vitesseBall = 4;

Raquette rect1 = new Raquette(0, 425, 20, 150);
Raquette rect2 = new Raquette(980, 425, 20, 150);
Ball ball = new Ball(487, 487, 20, 20);
LigneCentrale ligne = new LigneCentrale(490, 0, 10, 1000);
Score score1 = new Score();
Score score2 = new Score();

void draw() {
  background(0);
  rect1.display();
  rect2.display();
  ligne.display();
  ball.display();

  if (input_z == true) {
    rect1.positionY=rect1.positionY-vitesse;
  }
  if (input_s == true) {
    rect1.positionY=rect1.positionY+vitesse;
  }
  if (input_i == true) {
    rect2.positionY=rect2.positionY-vitesse;
  }
  if (input_k == true) {
    rect2.positionY=rect2.positionY+vitesse;
  }

if (input_space == true){
  score1.valeurScore = 0;
  score2.valeurScore = 0;
  ball.positionX = 487;
    ball.positionY = 487;
    rect1.positionY = 425;
    rect2.positionY = 425;
}

  if (moveRight == true) {
    ball.positionX+=2 + vitesseBall;
  }
  if (moveRight == false) {
    ball.positionX-=2 + vitesseBall;
  }

  if (moveUp == false) {
    ball.positionY+=2;
  } else {
    ball.positionY-=2;
  }

  if (ball.positionY>=980) {
    moveUp = true;
    vitesseBall++;
  }
  if (ball.positionY<=0) {
    moveUp = false;
    vitesseBall++;
  }

  fill(255);
  textSize(50);
  text("Score " + score1.valeurScore, 180, 50);
  text("Score " + score2.valeurScore, 680, 50);

  if (ball.positionX>=980) {
    ball.positionX = 487;
    ball.positionY = 487;
    score1.valeurScore +=1;
    vitesseBall = 4;
  }

  if (ball.positionX<=0) {
    ball.positionX = 487;
    ball.positionY = 487;
    score2.valeurScore +=1;
    vitesseBall = 4;
  }


  if (ball.positionX >= 980) {
    ball.positionX-=2;
    println("You loose");
  }
  if (ball.positionX <=0) {
    ball.positionX+=2;
    println("You loose");
  }

  if (score1.valeurScore == 3) {
    ball.positionX = 487;
    ball.positionY = 487;
    fill(255);
    textSize(50);
    text("You win !!", 180, 100);
    text("You loose !!", 680, 100);
  } 
  if (score2.valeurScore == 3) {
    ball.positionX = 487;
    ball.positionY = 487;
    fill(255);
    textSize(50);
    text("You win !!", 680, 100);
    text("You loose !!", 180, 100);
  }
  
  
    boolean result = false;
    result = collision(ball, rect1);
    if (result) {
      moveRight = true;
    }
    result = collision(ball, rect2);
    if (result) {
      moveRight = false;
    }
  }
