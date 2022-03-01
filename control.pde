boolean input_z = false;
boolean input_s = false;
boolean input_i = false;
boolean input_k = false;
boolean input_space = false;
boolean input_g = false;


void keyPressed() {
  if (key == 'z') {
    input_z = true;
  }
  if (key == 's') {
    input_s = true;
  }
  if (key == 'i') {
    input_i = true;
  }
  if (key == 'k') {
    input_k = true;
  }
  if (keyCode == ' ') {
    input_space = true;
  }


}

void keyReleased() {
  if (key == 'z') {
    input_z = false;
  }
  if (key == 's') {
    input_s = false;
  }
  if (key == 'i') {
    input_i = false;
  }
  if (key == 'k') {
    input_k = false;
  }
  if (keyCode == ' ') {
    input_space = false;
  }

}
