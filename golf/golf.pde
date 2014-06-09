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
      stroke(255);
      strokeWeight(2);
      noFill();
      line(x,y,x-power*cos(angleShot),y-power*sin(angleShot));
      ellipse(x,y,power*2,power*2);
      for(int cnt=0;cnt<6;cnt++){
        stroke(255,255-cnt*32);
        line(x+(15+cnt*10)*cos(angleShot),y+(15+cnt*10)*sin(angleShot),x+(20+cnt*10)*cos(angleShot),y+(20+cnt*10)*sin(angleShot));
      }
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
  
  groundSolidRect(-100,-100,840,120,0,0,0,0);
  groundSolidRect(-100,620,840,120,0,0,0,0);
  groundSolidRect(-100,-100,120,840,0,0,0,0);
  groundSolidRect(620,-100,120,840,0,0,0,0);
  
  groundSolidRect(320,320,80,80,1,1,1,0);
  groundSolidRect(480,320,80,80,1,0,1,1);
  groundSolidRect(320,360,240,40,0,0,0,0);
  
  groundSolidRect(160,240,40,240,1,1,1,0);
  groundSolidRect(160,440,80,40,0,1,1,1);
  
  groundSolidRect(80,80,80,20,1,0,1,1);
  groundSolidRect(80,120,80,20,0,0,1,1);
  groundSolidRect(80,80,20,80,1,1,0,1);
  
  groundSolidRect(180,80,80,20,1,0,1,0);
  groundSolidRect(180,80,20,80,1,1,0,1);
  groundSolidRect(220,80,20,80,0,1,0,1);
  groundSolidRect(260,100,20,60,0,1,1,1);
  
  groundSolidRect(340,80,60,20,1,0,1,1);
  groundSolidRect(300,140,60,20,1,1,0,1);
  groundSolidRect(340,80,20,80,1,0,0,1);
  
  if(coll==1&shot==0){
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
    coll=0;
  }
  
  shot=0;
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
}

void stop(){
  soundBounce.close();
  soundSmash.close();
  soundDead.close();
  soundScore.close();
  minim.stop();
  super.stop();
}
