import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer mySound;
FFT fft;



int sampleRate = 44100;
float eRadius;
int bufferSize = 512; 
 
void setup(){

  size(800, 800,P3D);
  noStroke();
  rectMode(CENTER);
  minim = new Minim(this);
  mySound = minim.loadFile("westendblues.mp3", bufferSize);
  mySound.play();

  ellipseMode(RADIUS);
  eRadius = 20;
}
int n=0;
void draw(){
   PImage parker = loadImage("Armstrong.jpg");
  image(parker, 0, 0);
  translate(mouseX,mouseY); //centerpoint 
  for(int i = 0; i < mySound.bufferSize() - 1; i++)  {
    //rotateX(n*-PI/6*0.05);
    //rotateY(n*-PI/6*0.05);
    rotateZ(n*-PI/128*0.05);
    fill(random(255),random(255),random(255));
    ellipse(i,i,mySound.left.get(i)*30,mySound.left.get(i)*30);
      n++;
}}



void stop(){
  mySound.close();
  minim.stop();
  super.stop();
}
