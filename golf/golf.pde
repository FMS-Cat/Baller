int genesw,holdStart=1,shot,charge,coll;
float resist=0.999,e=0.8,f=0.99;
float x=90,y=480,r=10,vx=0,vy=0,ax=0,ay=0.02,pv,ox,oy,pox,poy,m,cx,cy,angleVelo,angleColl,angleRef,angleShot,vm,am,dist,mxFirst,myFirst,power;
PFont hel=createFont("Helvetica Neue",12);
PFont helb=createFont("Helvetica Neue",128);

import ddf.minim.*;

Minim minim;
AudioPlayer soundBounce,soundSmash,soundDead,soundScore;
  
void setup(){
  
  size(640,640);
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
  
  if(vx==0){angleVelo=PI/2;}
  else{angleVelo=atan(vy/vx);}
  if(angleVelo<0){angleVelo=angleVelo+PI;}
  if(vy>0){angleVelo=angleVelo+PI;}
  
  if(mousePressed==true){
    if(holdStart==1){
      mxFirst=mouseX;
      myFirst=mouseY;
      holdStart=0;
    }
    charge=1;
    if(charge==1){
      power=sqrt(sq(mxFirst-mouseX)+sq(myFirst-mouseY));
      if(power>200){power=200;}
      if(mxFirst==mouseX){angleShot=PI/2;}
      else{angleShot=atan((myFirst-mouseY)/(mxFirst-mouseX));}
      if(angleShot<0){angleShot+=PI;}
      if(mouseY>myFirst){angleShot+=PI;}
      if(angleShot==0&mouseX>mxFirst){angleShot=PI;}
    }
  }else{
    if(charge==1){
      shot=1;
      charge=0;
    }
  }
  
  if(shot==1){
    vx=power*cos(angleShot)*0.03;
    vy=power*sin(angleShot)*0.03;
    soundBounce.rewind();
    soundBounce.play();
    soundSmash.rewind();
    soundSmash.play();
    holdStart=1;
  }
  
  stage(0);
  
  if(coll==1){
    if(shot==0){  
      vx*=f;vy*=f;
      pv=sqrt(sq(vx)+sq(vy));
      angleRef=angleColl*2-angleVelo;
      vx=pv*cos(angleRef)*(1-abs(cos(angleColl))*(1-e));
      vy=pv*sin(angleRef)*(1-abs(sin(angleColl))*(1-e));
      if(pv<0.1){
        vx=0;
        vy=0;
      }
      if(abs(cos(angleColl)*vx)+abs(sin(angleColl)*vy)>0.1){
        soundBounce.rewind();
        soundBounce.play();
      }
      println(angleColl);
    }
    coll=0;
  }
  
  shot=0;
  vx*=resist;vy*=resist;
  
  if(charge==1){
    stroke(51,153,153);
    strokeWeight(6);
    noFill();
    line(x,y,x-(power-1)*cos(angleShot),y-(power-1)*sin(angleShot));
    ellipse(x,y,power*2,power*2);
    stroke(255);
    strokeWeight(2);
    noFill();
    line(x,y,x-(power-1)*cos(angleShot),y-(power-1)*sin(angleShot));
    ellipse(x,y,power*2,power*2);
    for(int cnt=0;cnt<6;cnt++){
      noStroke();
      fill(51,153,153,255-cnt*32);
      ellipse(x+(r+8+cnt*10)*cos(angleShot),y+(r+8+cnt*10)*sin(angleShot),8,8);
      fill(255,255-cnt*32);
      ellipse(x+(r+8+cnt*10)*cos(angleShot),y+(r+8+cnt*10)*sin(angleShot),4,4);
    }
  }
  
  noStroke();
  fill(51,153,153);
  ellipse(x,y,r*2+4,r*2+4);
  fill(255);
  ellipse(x,y,r*2,r*2);
  
  fill(255,255,255,255);
  noStroke();
  textFont(hel);
  textAlign(LEFT,TOP);
  text("x = "+round(x)+" , y = "+round(y),25,20);
  text("Velocity = "+float(round(sqrt(sq(vx)+sq(vy))*100))/100,25,30);
}

void stop(){
  soundBounce.close();
  soundSmash.close();
  soundDead.close();
  soundScore.close();
  minim.stop();
  super.stop();
}
