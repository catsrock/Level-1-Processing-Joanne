import ddf.minim.*;
Minim minim;
AudioPlayer song;
PImage pictureOfRecord;
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}
int imageAngle=90;
int speed=20;
void setup(){
  pictureOfRecord=loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
minim=new Minim(this);
song=minim.loadFile("[Mozart-Der Messias]Hallelujah Chorus.mp3", 512);

}

void draw(){
  if(mousePressed){
  rotateImage(pictureOfRecord, imageAngle);
  image(pictureOfRecord, 0, 0);
  imageAngle+=speed;
  song.play();
  }
  else{
      song.pause();
  }
}


