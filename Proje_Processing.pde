import controlP5.*;
import processing.serial.*;

Serial myPort;
ControlP5 cp5;

PFont font;
PImage ph;

void setup(){
  
  size(800,800);
  
  ph = loadImage("photo1.jpg");
  
  image(ph,0,0);
  
  myPort = new Serial(this, "COM5", 9600);
  
  cp5 = new ControlP5(this);
  
  font = createFont("calibri bold", 36);
  
  cp5.addButton("Start").setPosition(330,200).setSize(150,100).setFont(font);
  
  cp5.addButton("Stop").setPosition(330,400).setSize(150,100).setFont(font);
  
}

void draw(){
  
  textFont(font);
  
  text("SULAMA SİSTEMİ KONTROLÜ", 200, 100);
  
}

void Start(){
  
  myPort.write('1');
}

void Stop(){
  
  myPort.write('0');
}

  
  
  
