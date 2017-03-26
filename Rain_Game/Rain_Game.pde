int position=1;
int randomNumber=(int) random(width);
int bucketHeight=50;
int bucketWidth=100;
int score=0;
String winningMessage="You win!";
void setup(){
  size(1000, 1000);
}

void draw(){
  background(120, 100, 155);
  fill(0, 0, 0);
textSize(16);
text("Score: "+score, 20, 20);
if(score==20){
  text(winningMessage, 50, 50);
  if(mousePressed){
System.exit(0);
  }
}
  else{fill(0, 100, 255);
  noStroke();
  ellipse(randomNumber, position+=5, 25, 25);
  fill(100, 200, 50);
  rect(mouseX, height-bucketHeight, bucketWidth, bucketHeight);
  if(position>=height){
    if(randomNumber>mouseX && randomNumber<mouseX+bucketWidth){
    score++;
  }
  else if(score>0){
  score--;
}
    println("Your score is now: "+score);
    position=0;
  randomNumber=(int) random(width);
}
  }
}