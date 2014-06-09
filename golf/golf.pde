int genesw;
float resist=0.999,e=0.8,f=0.99;
float x=160,y=310,r=20,vx=0,vy=0,ax=0,ay=0.02,pv,ox,oy,pox,poy,m,cx,cy,angleVelo,angleColl,angleRef,angleShot,vm,am,dist,mxFirst,myFirst,power;
Boolean holdStart=true,shot=false,charge=false,coll=false;
PFont hel=createFont("Helvetica Neue",12);
PFont helb=createFont("Helvetica Neue",128);

import ddf.minim.*;

Minim minim;
AudioPlayer soundBounce,soundSmash,soundDead,soundScore;
  
void setup(){
  
  size(1280,720);
  frameRate(320);
  
  minim = new Minim(this);
  soundBounce=minim.loadFile("bounce.wav");
  soundSmash=minim.loadFile("smash.wav");
  soundDead=minim.loadFile("dead.wav");
  soundScore=minim.loadFile("score.wav");
}

void draw(){
  
  background(#339999);
  
  vx=vx+ax;
  vy=vy+ay;
  x=x+vx;
  y=y+vy;
  
  if(mousePressed==true){
    if(holdStart==true){
      mxFirst=mouseX;
      myFirst=mouseY;
      holdStart=false;
    }
    charge=true;
    power=sqrt(sq(mxFirst-mouseX)+sq(myFirst-mouseY));
    if(charge==true){
      stroke(255,255,255);
      strokeWeight(2);
      noFill();
      line(mxFirst,myFirst,mouseX,mouseY);
      ellipse(mxFirst,myFirst,power*2,power*2);
    }
  }else{
    if(charge==true){
      shot=true;
      charge=false;
    }
  }
  
  if(shot==true){
    if(mxFirst==mouseX){angleShot=PI/2;}
    else{angleShot=atan((myFirst-mouseY)/(mxFirst-mouseX));}
    if(angleShot<0){angleShot+=PI;}
    if(mouseY>myFirst){angleShot+=PI;}
    
    vx=power*cos(angleShot)*0.1;
    vy=power*sin(angleShot)*0.1;
    soundBounce.rewind();
    soundBounce.play();
    soundSmash.rewind();
    soundSmash.play();
    shot=false;
    holdStart=true;
  }

/*  
  if(r>sqrt(sq(x-ox)+sq(y-oy))){
    pv=sqrt(sq(vx)+sq(vy));
    if(vx==0){angleVelo=PI/2;}else{angleVelo=atan(vy/vx);}
    if(angleVelo<0){angleVelo=angleVelo+PI;}
    if(vy>0){angleVelo=angleVelo+PI;}
    angleColl=atan((y-oy)/(x-ox));
    if(angleColl<0){angleColl=angleColl+PI;}
    angleRef=angleColl*2-angleVelo;
    vx=pv*cos(angleRef)-vm*cos(am)*0.5;
    vy=pv*sin(angleRef)-vm*sin(am)*0.5;
    cx=ox;cy=oy;
    
    soundBounce.rewind();
    soundBounce.play();
    soundSmash.rewind();
    soundSmash.play();
  }
*/
  
  groundSolidRect(100,100,100,100);
    
  if(r>x-0){x=r;vx*=-e;coll=true;}
  if(r>width-x){x=width-r;vx*=-e;coll=true;}
  if(r>y-0){y=r;vy*=-e;coll=true;}
  if(r>height-y){y=height-r;vy*=-e;coll=true;}
  
  if(coll==true){
    vx*=f;vy*=f;
    if(sqrt(sq(vx)+sq(vy))<0.1){
      vx=0;
      vy=0;
    }
    coll=false;
  }
  
  vx*=resist;vy*=resist;
  
  noStroke();
  fill(255,255,255,255);
  ellipse(x,y,r*2,r*2);
  
  fill(255,255,255,255);
  noStroke();
  textFont(hel);
  textAlign(LEFT,TOP);
  text("x = "+round(x)+" , y = "+round(y),5,0);
  text("Velocity = "+float(round(sqrt(sq(vx)+sq(vy))*100))/100,5,10);
  
  println(angleShot);
}

void stop(){
  soundBounce.close();
  soundSmash.close();
  soundDead.close();
  soundScore.close();
  minim.stop();
  super.stop();
}

void groundSolidRect(int x,int y,int wid,int hei){
  
  noStroke();
  fill(#FFFFFF);
  rect(x,y,wid,hei);
}
