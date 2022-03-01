class Collision {
  int positionX;
  int positionY;
  int tailleX;
  int tailleY;
}


boolean collision(Ball x_ball, Raquette x_raquette) {
  if (x_ball.positionX >= x_raquette.positionX && x_ball.positionX <= x_raquette.positionX + x_raquette.tailleX && x_ball.positionY >= x_raquette.positionY && x_ball.positionY <= x_raquette.positionY + x_raquette.tailleY ||
    x_ball.positionX + x_ball.tailleX >= x_raquette.positionX && x_ball.positionX + x_ball.tailleX <= x_raquette.positionX + x_raquette.tailleX && x_ball.positionY >= x_raquette.positionY && x_ball.positionY <= x_raquette.positionY + x_raquette.tailleY ||
    x_ball.positionX >= x_raquette.positionX && x_ball.positionX <= x_raquette.positionX + x_raquette.tailleX && x_ball.positionY + x_ball.tailleY >= x_raquette.positionY && x_ball.positionY + x_ball.tailleY <= x_raquette.positionY + x_raquette.tailleY ||
    x_ball.positionX + x_ball.tailleX >= x_raquette.positionX && x_ball.positionX + x_ball.tailleX <= x_raquette.positionX + x_raquette.tailleX && x_ball.positionY + x_ball.tailleY >= x_raquette.positionY
    && x_ball.positionY + x_ball.tailleY <= x_raquette.positionY + x_raquette.tailleY)
  {
    return true;
  }
  return false;
  

}
